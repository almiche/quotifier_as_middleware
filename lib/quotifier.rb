require 'json'
require 'net/http'
require 'quotify'

class Quotifier

    def initialize(app)
        @app  = app
        url = "https://raw.githubusercontent.com/jusleg/quotifier/master/db.json"
        @dictionnary = JSON.parse(Net::HTTP.get(URI.parse(url)))
    end

    def call(env)
        status, @headers, body = @app.call(env) 
        
        if @headers['Content-Type'].include?'text/html'
            [status, @headers, quotify(body)]
        else
            [status, @headers, body] 
        end
      
    end

    def quotify(html)
        string_html = html[0]
        counter = 0
        fresh_output = String.new

        string_html.each_line do |line|  
            random_mod = rand(1..10)
            if counter % random_mod == 0
                line += "\t\"" + Quotify.generate + "\"" + "\n"
            end
            fresh_output << line
            counter = counter + 1
        end
        html[0] = fresh_output
        @headers['Content-Length'] = fresh_output.length.to_s 
        return html
    end


end
