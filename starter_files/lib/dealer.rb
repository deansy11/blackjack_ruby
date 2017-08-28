require_relative "deck"

class Dealer
  attr_accessor :hand
  def initialize
    @hand = []
  end

  def hand
    @hand
  end

end
