def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal_card = rand(1..11)
  deal_card
end

def display_card_total(deal_card)
  display_card_total = deal_card
  puts "Your cards add up to #{display_card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    counter = 0
    card_total = 0
    2.times do
    deal_card
    card_total = card_total + deal_card
    counter += 1
    end
    puts "Your cards add up to #{card_total}"
    card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
    if user_input == "h"
      card_total = card_total + deal_card
    elsif user_input == "s" then
      card_total
    else
      invalid_command
    end
  end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = 0
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
