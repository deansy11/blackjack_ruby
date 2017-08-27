require_relative "deck"

class User
  def initialize (money, hand)
    @money = 100
    @hand = []
  end

  attr_accessor :money, :hand

  def hand
    @hand
  end

  def money
    @money
  end

  def hand_value
    @hand_value
  end

end
