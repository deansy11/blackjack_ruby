require_relative "hand"

class Dealer
  def initialize()

  end

  def hit
    user.hand << deck.draw
  end

  def stand
    # compare user's hand and dealer's hand
    # if statement - if user stands, then evaluate both hands and compare
  end

end
