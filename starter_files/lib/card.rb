class Card
  RANKS = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]

  attr_reader :suit, :rank
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def greater_than?(card)
    value > card.value
  end

  def ==(card)
    self.suit == card.suit && self.rank == card.rank
  end

  def value
    RANKS.index(self.rank)
  end

end
