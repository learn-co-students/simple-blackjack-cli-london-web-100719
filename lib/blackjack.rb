def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  generate = rand(1..11)
  return generate
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts ("Type 'h' to hit or 's' to stay")
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  get_user_input
  if get_user_input == 'h'
    deal_card
    card_total += deal_card
  else if get_user_input == 's'
    prompt_user
    get_user_input
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  while card_total < 21 {
    welcome
    initial_round
    prompt_user
    get_user_input
    hit?
  }
end