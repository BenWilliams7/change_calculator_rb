require("sinatra")
require("sinatra/reloader")
require("./lib/change.rb")
also_reload("lib/**/*.rb")
get("/") do
  erb(:index)
end

get("/change") do
  @output = params.fetch('change').to_i().change()
  erb(:change)
end
