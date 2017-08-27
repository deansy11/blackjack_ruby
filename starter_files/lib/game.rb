require_relative "deck"
require_relative "dealer"
require_relative "user"
require_relative "card"

class Game
  attr_reader :user, :dealer
  def initialize
    @user = User.new([], 100)
    @dealer = Dealer.new([], 0)
  end

  def deck
    @deck = Deck.new(:cards, :rank)
    @deck.shuffle
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
  end
end

  # def user_hand_value
  #
  # end
  #
  # def user_hand
  #   2.times do
  #     card = deck.draw
  # end
