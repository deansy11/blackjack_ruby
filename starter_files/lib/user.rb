require_relative "deck"

class User
  def initialize (money)
    @money = 100
  end

  attr_accessor :money
  #
  # def user_hand
  #   @hand
  # end

  def money
    @money
  end

end
