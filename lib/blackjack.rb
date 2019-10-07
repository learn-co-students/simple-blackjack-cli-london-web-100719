require "pry"
def welcome()
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  return rand(11) + 1 
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user()
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  input = gets.chomp
  return input
end

def end_game(num)
 puts  "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = deal_card().to_i + deal_card().to_i
  display_card_total(total)
  return total
end


def hit?(current_total)
  prompt_user()
  
  input = get_user_input()
  while input != "s" && input != "h"
    invalid_command()
    prompt_user()
    input = get_user_input()
  end
  
  if input.to_s == "s"
    # do nothing
  elsif input.to_s == "h"
   current_total = current_total + deal_card()
  end 
  
  return current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner()
  welcome()
  total = initial_round()
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end 