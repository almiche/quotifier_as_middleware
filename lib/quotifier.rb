require 'json'
require 'net/http'

class Quotifier

    def initialize(app)
        @app  = app
        url = "https://raw.githubusercontent.com/jusleg/quotifier/master/db.json"
        @dictionnary = JSON.parse(Net::HTTP.get(URI.parse(url)))
    end

    def call(env)
        status, headers, body = @app.call(env) 
        
        if headers['Content-Type'].include?'text/html'
            [status, headers, quotify(body,headers)]
        else
            [status, headers, body] 
        end
      
    end

    def quotify(html,headers)

        string_html = html[0]
        counter = 0
        fresh_output = String.new

        string_html.each_line do |line|  
            random_mod = rand(1..10)
            if counter % random_mod == 0
                line += random_quote 
            end
            fresh_output << line
            counter = counter + 1
        end
        html[0] = fresh_output
        headers['Content-Length'] = fresh_output.length.to_s
        return html
    end

    def random_quote()
    random_author = rand(0..(@dictionnary['authors'].count-1))
    random_quote = rand(0..(@dictionnary['quotes'].count - 1))
    return "\t\"" + @dictionnary['quotes'][random_quote] + " - "+ @dictionnary['authors'][random_author] + "\"" + "\n"
    end



end
