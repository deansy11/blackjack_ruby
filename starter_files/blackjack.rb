require_relative "lib/deck"
require_relative "lib/dealer"
require_relative "lib/user"


class Game
  def initialize(user, dealer, deck)
    @user = User.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def user
    @user
  end

  def dealer
    @dealer
  end

  def deck
    @deck
  end

  def deck_shuffle
    deck.shuffle
  end

  def user_move
    while true
      print "You have $100 and bet $10. You have a #{} and a #{}. \n Your total is #{}. \n
      # Do you want to (H)it or (S)tand?"
      move = gets.chomp.upcase
      if move == "H"
        user.hand << deck.draw
        return true
      elsif move == "S"
        return false #or would this be true?
      else
        print "Only two options here so I'll ask again - do you want to (H)it or S(tand)?"
        move = gets.chomp.upcase
      end
  end

  def 

end

# end
#
#
# def next_move
#   gets.chomp.to_s.upcase
# end
# move = next_move
#
# user = User.new
# dealer = Dealer.new
# deck = Deck.new
#
# # deck = Deck.new
# # deck.shuffle
# #
# # user.hand << user.draw * 2
# # dealer.hand << dealer.draw * 2
#
# puts "TODO Implement the game of blackjack."
#
# puts "Hello and welcome to the game of blackjack! Let's begin."
#
#
# move #make sure that user inputs only h or s
#
# #   if move == "H"
# #     user.hit
# #   else
# #
# #
# #   end
# #
# #
# #
# #
# # if move == "h"
# #
# # end
# #
# #
# # end
