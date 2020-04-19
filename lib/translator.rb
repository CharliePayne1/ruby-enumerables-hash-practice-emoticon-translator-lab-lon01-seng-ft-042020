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

def get_english meaning(filename, japanese_emoticon)
    load_library(filename)
    hash.each do |key, value|
        if value.[:japanese] = japanese_emoticon
          return key
        end
      end
    end