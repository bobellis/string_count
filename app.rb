require('sinatra')
require('sinatra/reloader')
require('./lib/string_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/string_count') do
  @count = (params.fetch('target_word')).count_words(params.fetch('words_to_check'))
  erb(:string_count)
end
