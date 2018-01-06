require 'json'
require 'net/http'
require 'quotify'

class Quotifier

    def initialize(app)
        @app  = app
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
        fresh_output = ''
        js_flag = false
        css_flag = false
        regex = {
                js_open: /[<]{1}script[>]{1}/,
                js_closed: /[<]{1}\/script[>]{1}/,
                style_open: /[<]{1}style[>]{1}/,
                style_closed: /[<]{1}\/style[>]{1}/
        }

        string_html.split(/[\n\r]+/).each do |line|
            if regex[:js_open].match(line)
                js_flag = true
            elsif regex[:js_closed].match(line)
                js_flag = false
            elsif regex[:style_open].match(line)
                css_flag = true
            elsif regex[:style_closed].match(line)
                css_flag = false
            end

            random_mod = rand(1..10)
            if counter % random_mod == 0
                if js_flag
                    line = line + "\n\t \\\\" + Quotify.generate
                elsif css_flag
                    line = line + "\n\t #" + Quotify.generate
                elsif !js_flag
                    line = line + "\n\t" + Quotify.generate
                elsif !css_flag
                    line = line + "\n\t" + Quotify.generate
                end
            end
            fresh_output << line + "\n"
            counter += 1
        end


        html[0] = fresh_output
        @headers['Content-Length'] = fresh_output.length.to_s 
        html
    end

    #This will be used for the next release
    def single_line_js_or_css? (line)
        single_line_js = /[<]{1}script[>]{1} .* [<]{1}\/script[>]{1}/
        single_line_css = /[<]{1}script[>]{1} .* [<]{1}\/script[>]{1}/
       
        if single_line_css.match(line) || single_line_js.match(line)
            return true
        else
            return false
        end

    end

end
