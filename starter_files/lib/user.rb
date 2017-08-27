require_relative "deck"

class User
  def initialize
    @money = 100
    @hand = []
    @hand_value = 0
  end

  attr_accessor :money, :hand, :hand_value

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
