require_relative 'config/environment'


class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	post '/piglatinize' do
		results = PigLatinizer.piglatinize(phrase)
		erb :results
	end

end