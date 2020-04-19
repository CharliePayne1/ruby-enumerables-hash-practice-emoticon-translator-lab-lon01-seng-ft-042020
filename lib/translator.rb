require 'pry'
require 'yaml'# require modules here

def load_library(filename)
  hash = {}
  emoticons = YAML.load_file(filename)
  emoticons.each do |key, value|
    hash[key] = {:english => value[0], :japanese => value[1]}
  end
  hash
end

def get_english_meaning(filename, japanese_emoticon)
    hash = load_library(filename)
    hash.each do |key, value|
        if value[:japanese] == japanese_emoticon
          return key
        end
    end
    "Sorry, that emoticon was not found"
  end
  
  
def get_japanese_emoticon(filename, english_emoticon)
    hash = load_library(filename)
    hash.each do |key, value|
        if value[:english] == english_emoticon
          return value[:japanese]
        end
    end
    "Sorry, that emoticon was not found"
  end