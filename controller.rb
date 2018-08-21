require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('models/*')

get '/' do
  erb(:home)
end


get '/:option1/:option2' do
  game = Game.new(params[:option1], params[:option2])
  @result = game.result
  erb(:result)

end
