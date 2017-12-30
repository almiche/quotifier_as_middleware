require 'sinatra'
require_relative 'quotifier'

class MyApp < Sinatra::Application

    get '/hello' do
        '<a href="http://google.com"> hello there ! </a>'
    end

    get '/' do 
        '2+2 is for minus 1 thats 3'
    end

end





use Quotifier
use Rack::Reloader , 10 

run MyApp.new 