require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game')
also_reload('./models/*')


get '/paper/:guess' do
  guess = params['guess']
  @result = Game.paper(guess)
  @player1 = "Paper"
  @player2 = guess
  erb(:result, :player1, :player2)
end

get '/scissors/:guess' do
  guess = params['guess']
  @result = Game.scissors(guess)
  erb(:result)
end

get '/rock/:guess' do
  guess = params['guess']
  @result = Game.rock(guess)
  erb(:result)
end

get '/welcome' do
  @welcome = "Welcome to my game! It's brand new and nobody has ever heard of it before. Type 'rock', 'scissors' or 'paper' into the url above (which is a totally normal and legit way to interact with a website), then a /, then another of those three options. Then hit return. This would be a stupid way to play this game if it was a really popular and well known one, but thankfully it's brand new and completely mysterious."
  erb(:welcome)
end
