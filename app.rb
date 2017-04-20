require('sinatra')
require('sinatra/reloader')
require('./lib/allergy')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @score = params.fetch('number')
  @results = (@score.to_i.allergy())
  erb(:result)
end
