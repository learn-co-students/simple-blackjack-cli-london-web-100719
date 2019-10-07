def welcome
  # code #welcome here
    puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
    return rand(1..11)
end

def display_card_total
  # code #display_card_total here
def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method= gets.chomp
end

def end_game
  # code #end_game here
def end_game(n)
  if n>21
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum= deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?
  # code hit? here
def hit?(current_total)
  prompt_user
  input= get_user_input
  if input == "h"
    current_total+= deal_card
  elsif input == "s"
    return current_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end