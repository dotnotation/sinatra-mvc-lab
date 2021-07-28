require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pig_latin = PigLatinizer.new
        @results = pig_latin.piglatinize(params[:user_phrase])
        erb :results
    end
end