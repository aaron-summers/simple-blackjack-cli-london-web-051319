def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  card_total = num1 + num2
  display_card_total(card_total)
  return card_total
  
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  if input == "h"
    new_card = deal_card
    card_total = new_card + card_total
    return card_total
  elsif input == 's'
    card_total
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
  # code runner here
end
    
