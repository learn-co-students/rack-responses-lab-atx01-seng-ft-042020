require 'rack'
class Application
    def call(env)
        res = Rack::Response.new
        hour = Time.now.hour
        res.write(hour < 12 ? 'good morning' : 'good afternoon')

        res.finish
    end
end