require_relative "deck"
require_relative "game"

class Dealer
  attr_accessor :hand
  def initialize
    @hand = []
  end

  def dealer_hit
    dealer_hand << deck.draw
  end

  def dealer_move
    if dealer_hand_value < 17
      dealer_hit
    else
      print "The dealer's hand value is #{dealer_hand_value }."
    end
  end

end
