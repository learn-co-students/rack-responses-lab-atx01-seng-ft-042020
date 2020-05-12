class Application
    def call(env)
        resp = Rack::Response.new

        good_morning = "Good Morning!"
        good_afternoon = "Good Afternoon!"

        if Time.now.hour.to_i < 12
            resp.write good_morning
        else
            resp.write good_afternoon
        end
        resp.finish
    end
end