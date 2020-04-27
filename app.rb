require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    text = params["text"]
    binding.pry
    @new_string = PigLatinizer.new(text)
    erb :pig_latin
  end
  
end