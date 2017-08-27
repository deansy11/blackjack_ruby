require_relative "deck"

class Dealer
  def initialize(hand, value)
    @hand = []
    @hand_value = 0
  end

  attr_accessor :hand, :hand_value

  def hand
    @hand
  end

  def hand_value
    @hand_value
  end

  # def hit
  #   user.hand << deck.draw
  # end
  #
  # def stand
  #   # compare user's hand and dealer's hand
  #   # if statement - if user stands, then evaluate both hands and compare
  # end

end
