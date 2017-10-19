---
title: >-
  Blackjack
description: >-
  A command-line game that allows one player to play blackjack against the computer.
---

A one-player-against-the-computer game of blackjack.

* The game starts with a player hand value of $100. Bets are $10.
* The only valid moves are hit and stand.
* Player can continue opting-in to additional rounds as long as they have money.
* The dealer uses one deck in their shoe and reshuffles after each round.

User contribute input from the command line.
```irb
irb(main):001:0> name = gets
Keelan
=> "Keelan\n"
irb(main):002:0> name
=> "Keelan\n"
irb(main):003:0> name.chomp
=> "Keelan"
```

`.chomp` removes a final newline from a string if there is one. You will need this when getting input from users. One more example, this time of a function that handles getting a yes or no from a user:

```ruby
def get_yes_or_no
  # loop until you get a good answer and return
  while true
    print "Please enter (y)es or (n)o: "
    answer = gets.chomp.downcase
    if answer[0] == "y"
      return true
    elsif answer[0] == "n"
      return false
    end
    puts "That is not a valid answer!"
  end
end
```

### Sample transcript

Here is a sample transcript of game play. It ends after three rounds for brevity, but would continue in actual play.
Your game does not have to have the same text, but play will be similar.

```
Hello and welcome to the game of blackjack! Let's begin.

You have $100 and bet $10.
You have a 9 and a 8 in your hand. Your total is 15.
Do you want to (h)it or (s)tand? H

You hit. You now have a 9, 8, and 4 in your hand. Your total is 19.
Do you want to (h)it or (s)tand? S

You stand. Your total is 19.

The dealer hits.
The dealer stands. The dealer has a total of 20. You lose!

---

You have $90 and bet $10.
You have an A and a 7 in your hand. Your total is 18.
Do you want to (h)it or (s)tand? H

You hit. You now have an A, 7, and 9 in your hand. Your total is 17.
Do you want to (h)it or (s)tand? H

You hit. You now have an A, 7, 9, and 5 in your hand. Your total is 22.
You bust!

---

You have $80 and bet $10.
You have a 5 and a 5 in your hand. Your total is 10.
Do you want to (h)it or (s)tand? H

You hit. You now have a 5, 5, and A in your hand. Your total is 21.

The dealer stands. The dealer has a total of 19. You win!

---

You have $90 and bet $10.
...
```
[callout-download]
[/callout-download]
