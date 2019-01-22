require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  display_card_total(card_1 + card_2)
  return card_1 + card_2
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  else if user_input == 's'
  else
    invalid_command
    prompt_user
  end
end
return card_total
end


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  first_hand = initial_round
  prompt_user
  get_user_input
  until first_hand >= 21
    display_card_total(first_hand)
    first_hand = hit?(first_hand)
    binding.pry
  end
  end_game(first_hand)
end
