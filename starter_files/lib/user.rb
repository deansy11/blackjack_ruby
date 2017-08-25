require_relative "hand"

class USER
  def initialize(money, hand)
    @money = money
    @hand = hand

  end


   def hit

   end

   def stand
   end



  attr_accessor :money, :grade
