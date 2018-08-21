require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('models/*')
# 
# game = Game.new("paper", "rock")

# binding.pry
# nil

get '/:option1/:option2' do
  game = Game.new(params[:option1], params[:option2])
  return game.result
end
