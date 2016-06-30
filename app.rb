require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/outcome') do
  @word_one = params.fetch('word_one')
  @word_two = params.fetch('word_two')
  @word_three = params.fetch('word_three')
  @anagrams = params.fetch('word').anagram(@word_one, @word_two, @word_three)
  erb(:outcome)
end
