require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @count = (params.fetch('target_word')).count_words(params.fetch('words_to_check'))
  erb(:string_count)
