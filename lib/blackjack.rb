def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   int = deal_card + deal_card
   display_card_total(int)
   return (int)
end

def hit?(num)
  prompt_user
  inp = get_user_input
  until inp == 'h' or 's'
    invalid_command
    prompt_user
    inp = get_user_input
  end
  if inp == "h"
    num = deal_card + num
  elsif inp == 's'
    num
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  hit?(num)
  display_card_total(num)
  end_game(num)
end
    
