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

  def hand

  end

  def user_hand
    user.hand
  end

  def dealer_hand
    dealer.hand
  end

  def user_hand_value
    user_hand.value
  end

  def dealer_hand_value
    dealer.hand.value
  end

  def user_hit
    user_hand << deck.draw
  end
  
  def deck_shuffle
    deck.shuffle
  end

  def place_bet
    user.money -= 10
  end

  def blackjack
    while user.money > 9
      deck_shuffle
      place_bet
      2.times { user_hit }
      2.times { dealer_hit }
      print "Welcome to blackjack! You started with $#{user.money} and bet $10. You're holding the #{user.hand[0].rank} of #{user.hand[0].suit.upcase} and the #{user.hand[1].rank} of #{user.hand[1].suit.upcase}. \n Your total is #{}. \n
      # Do you want to (H)it or (S)tand?"
      move = gets.chomp.upcase
      if move == "H"
        user_hit
        print "You hit. You now have #{user.hand[0].rank} of #{user.hand[0].suit.upcase}, the #{user.hand[1].rank} of #{user.hand[1].suit.upcase} and  #{user.hand[2].rank} of #{user.hand[2].suit.upcase}. Do you want to (H)it or (S)tand?"
        move = gets.chomp.upcase
      elsif move == "S"
        print "Alright. You decided to stand. Your total is #{}. Let's see what the dealer has."
      else
        print "Only two options here so I'll ask again - do you want to (H)it or S(tand)?"
        move = gets.chomp.upcase
      end
    end
  end
end
