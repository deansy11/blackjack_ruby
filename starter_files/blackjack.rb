require_relative "lib/game"

puts "Hello and welcome to the game of blackjack! Let's begin."
game = Game.new

def begin(game)
  game.user_money
  game.user_hand_value
end

begin(game)
  game.deck
  game.hit
  game.user_hand
  game.user_hand_value
  game.user_move
end

until game.user.money == 0
end
