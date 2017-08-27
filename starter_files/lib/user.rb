require_relative "deck"

class User
  def initialize (money, user_hand)
    @money = 100
    @user_hand = []
  end

  attr_accessor :money, :hand

  def user_hand
    @hand
  end

  def money
    @money
  end

end
