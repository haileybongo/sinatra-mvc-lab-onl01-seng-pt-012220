require 'pry'
class PigLatinizer
  
  attr_reader :text 
  
  def initialize(text)
    @text = text.downcase
  end
  
  def pig_latin
    words = @text.split(" ")
    #binding.pry
    
    i = 0
    phrase = [] 
    
    words.each do |letters|
      letters = letters.split("")
      binding.pry
      if (letters[0] == 'a' || letters[0] == 'e' || letters[0] == 'i' || letters[0] == 'o' || letters[0] == 'u')
        letters = letters.join("")
        letters << "way"
      else
        while (letters[i] == "a" || letters[i] == 'e' || letters[i] == 'i' || letters[i] == 'o' || letters[i] == 'u')
        
          letters << letters.shift
          i += 1
        end
        letters = letters.join("")
        letters << "ay"
      end
      phrase << letters
    end
  phrase.join(" ")
      
  end
  
end
      