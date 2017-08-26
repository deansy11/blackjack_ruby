require_relative "hand"

class USER
  def initialize(money, hand)
    @money = money
    @hand = hand

  end

  def hit
    user.hand << deck.draw
  end

  def stand
    # compare user's hand and dealer's hand
    # if statement - if user stands, then evaluate both hands and compare
  end


   def hit

   end

   def stand
   end



  attr_accessor :money, :grade
