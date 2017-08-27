require "minitest/autorun"
require_relative "../blackjack"

class GameTest < Minitest::Test
  def setup
    @deck = Deck.new
  end

  def test_deck_can_be_shuffled
    deck = @deck.shuffle
    puts deck
  end

end
