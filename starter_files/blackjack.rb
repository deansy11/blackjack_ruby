require_relative "lib/deck"
require_relative "lib/dealer"
require_relative "lib/user"


# class Game
#   def initialize(user, dealer)
#     @user = User.new
#     @dealer = Dealer.new
#   end
#
#
#   def game_over
#   end
#
# end


def next_move
  gets.chomp.to_s.upcase
end
move = next_move

user = User.new
dealer = Dealer.new
deck = Deck.new

# deck = Deck.new
# deck.shuffle
#
# user.hand << user.draw * 2
# dealer.hand << dealer.draw * 2

puts "TODO Implement the game of blackjack."

puts "Hello and welcome to the game of blackjack! Let's begin."

puts "You have $100 and bet $10. You have a #{} and a #{}. \n Your total is #{}. \n
Do you want to (h)it or (s)tand?"

move #make sure that user inputs only h or s

#   if move == "H"
#     user.hit
#   else
#
#
#   end
#
#
#
#
# if move == "h"
#
# end
#
#
# end
