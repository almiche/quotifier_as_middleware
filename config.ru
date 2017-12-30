require 'sinatra'
require_relative 'quotifier'

class MyApp < Sinatra::Application

    get '/hello' do
        '<!DOCTYPE html>
        <html>
        <body>
        
        <h2>An unordered HTML list</h2>
        
        <ul>
          <li>Coffee</li>
          <li>Tea</li>
          <li>Milk</li>
        </ul>  
        
        </body>
        </html>
        '
    end

    get '/' do 
        '2+2 is for minus 1 thats 3'
    end

end





use Quotifier
use Rack::Reloader , 10 

run MyApp.new 