require_relative "deck"
require_relative "dealer"
require_relative "user"
require_relative "card"
require "pry"

class Game
  attr_reader :user, :dealer, :deck
  def initialize
    @deck = Deck.new
    @deck.shuffle
  end

  def hand_value(player)
    hand_value = player.hand.reduce(0) do |acc, i|
      if i.rank.to_s == "J" || i.rank.to_s == "Q" || i.rank.to_s == "K"
        acc + 10
      elsif i.rank.to_s == "A"
        acc + 1
      else
      acc + i.rank.to_i
      end
    end
    hand_value
  end

  def user_hit
    @user.hand << @deck.draw
  end

  def dealer_hit
    @dealer.hand << @deck.draw
  end

  def dealer_move
    while hand_value(@dealer) < 17
      dealer_hit
    end
    if hand_value(@dealer) == 21
      print "Dealer's hand value is '21'. Dealer wins (sorry)!"
      new_game
    else
    print "The dealer's hand value is #{hand_value(@dealer)}.\n"
    end
  end

  def deck_shuffle
    @deck.shuffle
  end

  def place_bet
    @user.money -= 10
  end

  def new_game
    "Do you want to play again? \n Y(es) or (N)o."
    play_again = gets.chomp.upcase
    if play_again == "Y"
      blackjack
    elsif play_again == "N"
      print "Thanks for playing!"
      return
    else
      print "Please type 'Y' to play again or 'N' to end."
      play_again
    end
  end

  def blackjack
    @user = User.new
    @dealer = Dealer.new

    while user.money > 9
      @deck.shuffle
      place_bet
      2.times { user_hit }
      2.times { dealer_hit }
      print "Welcome to blackjack! You started with $#{@user.money} and bet $10. You're holding the #{@user.hand[0].rank} of #{@user.hand[0].suit.upcase} and the #{@user.hand[1].rank} of #{@user.hand[1].suit.upcase}. \n Your total is #{hand_value(@user)}. \n
      Do you want to (H)it or (S)tand?"
      move = gets.chomp.upcase
      if move == "H"
        user_hit
        print "You hit. You now have #{@user.hand[0].rank} of #{@user.hand[0].suit.upcase}, the #{@user.hand[1].rank} of #{@user.hand[1].suit.upcase} and the #{@user.hand[2].rank} of #{@user.hand[2].suit.upcase}. Do you want to (H)it or (S)tand?\n Your total is #{hand_value(@user)}. \n"
        move = gets.chomp.upcase
      elsif move == "S"
        print "Alright. You decided to stand.\n Your total is #{hand_value(@user)}. Let's see what the dealer has. \n"
      else
        print "Only two options here so I'll ask again - do you want to (H)it or S(tand)?"
        move = gets.chomp.upcase
      end
      if hand_value(@user) > 21
        print "You went over 21. Sorry you lose!\n"
        new_game
      elsif hand_value(@user) == 21
        print "You got 21! You win!!!"
        new_game
      else
        dealer_move
      end
      # need to compare dealer hand to user hand value
    end
  end
end
