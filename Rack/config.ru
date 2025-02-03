# https://www.writesoftwarewell.com/definitive-guide-to-rack/

class App
  def call(env)
    headers = { 'Content-Type' => 'text/html' }
    
    response = ['<h1>Greetings from Rack!!</h1>']
    
    [200, headers, response]
  end
end

run App.new

# This is our very own web application that returns a simple response. 
# Now let’s try to run it in the browser. For that, we will need a web 
# server, a piece of software that accepts HTTP requests and returns HTTP response.

# Puma server

# Thin server

# Unicorn server


