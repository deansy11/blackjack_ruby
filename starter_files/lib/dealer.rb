require_relative "deck"
require_relative "game"

class Dealer
  attr_accessor :hand
  def initialize
    @hand = []
  end

end
