require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/outcome') do
  # @outcome = params.fetch('user_input').combo()
  erb(:outcome)
end
