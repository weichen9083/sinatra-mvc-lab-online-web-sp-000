require_relative 'config/environment'


class App < Sinatra::Base

get '/' do
  erb :user_input
end 

ppost '/piglatinize' do 

  ring = PigLatinizer.new
  @string = ring.pig(params[:user_phrase])  
  erb :piglatinize

end 


end