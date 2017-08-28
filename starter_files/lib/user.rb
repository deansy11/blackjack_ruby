require_relative "deck"

class User
  attr_accessor :money, :hand
  def initialize
    @hand = []
    @money = 100
  end

  def money
    @money
  end

  def hand
    @hand
  end

end
