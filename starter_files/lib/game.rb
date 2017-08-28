require_relative "deck"
require_relative "dealer"
require_relative "user"
require_relative "card"
require "pry"

class Game
  attr_reader :user, :dealer, :deck
  def initialize
    @user = User.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def user
    @user
  end

  def deck
    @deck
  end

  def dealer
    @dealer
  end

  def user_hand
    user.hand
  end

  def dealer_hand
    dealer.hand
  end

  def user_hand_value

  end

  def dealer_hand_value

  end

  # def dealer_move
  #   if dealer_hand_value < 17
  #     hit(deck)
  #     dealer_move(deck)
  #   end
  # end

  def user_hit
    user_hand << deck.draw
  end

  def dealer_hit
    dealer_hand << deck.draw
  end

  def deck_shuffle
    deck.shuffle
  end

  def place_bet
    user.money -= 10
  end

  def user_move
    while user.money > 9
      deck_shuffle
      place_bet
      2.times { user_hit }
      2.times { dealer_hit }
      print "Welcome to blackjack! You started with $#{user.money} and bet $10. You're holding a #{} and a #{}. \n Your total is #{}. \n
      # Do you want to (H)it or (S)tand?"
      move = gets.chomp.upcase
      if move == "H"
        user_hit
        print "You hit. You now have #{}, #{}, #{}. Do you want to (H)it or (S)tand?"
        move = gets.chomp.upcase
      elsif move == "S"
        return "Alright. You decided to stand. Your total is #{}."
      else
        print "Only two options here so I'll ask again - do you want to (H)it or S(tand)?"
        move = gets.chomp.upcase
      end
    end
  end
end
