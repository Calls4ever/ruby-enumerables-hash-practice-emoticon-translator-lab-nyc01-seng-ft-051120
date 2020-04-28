# require modules here
require "yaml"
require 'pry'
def load_library(file_path="lib/emoticons.yml")
  # code goes here
result={}
  dictionary = YAML.load_file(file_path)
   dictionary.each { |val, (val1, val2)|
  result[val]={english:  val1, japanese:  val2}
  }
return result
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning(file_path="lib/emoticons.yml", emoticons=":)")
  # code goes here
  meaning=""
  result=load_library(file_path)
  result.each{|val0, val1|
if result[val0][:english]==emoticons || result[val0][:japanese]==emoticons
  meaning=val0
  break
end

  }
  if meaning==""
    return "Sorry, that emoticon was not found"
  else meaning
  end
end
#binding.pry
