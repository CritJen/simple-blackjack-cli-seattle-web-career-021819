require_relative "blackjack.rb"
def runner
  welcome 
  initial_round
  prompt_user
  get_user_input
  hit?
  
end