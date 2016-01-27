#set win variable to zero
win = 0
#set loses variable to zero
losses = 0
#Prompt user to chose r, p or s
history = []#get user input, set to choice variable, make sure it's lowercase
#Select computer choice randomly from arrary, set to variable computer
3.times do
puts "Choose r, p, or s"
choice = gets.chomp.downcase
  computer = ['r', 'p', 's'].sample

#Three time do iterate
  #use case statement with [player, computer] (This will be challenging, but totally worth it!)
  case [choice, computer]
    #when ['p', 'r'], ect..
  when ['p', 'r'], ['r', 's'], ['s', 'p']
    puts "You win!"
    win = win + 1
    #When ['r','r'], ect..
  when ['r', 'r'], ['s', 's'], ['p', 'p']
      puts "You tied!"
    else
      puts "You lose"
      losses = losses + 1
end
history << [choice, computer]
end

puts win
puts losses

if win > losses
    puts "You are the Winner"
elsif win == losses
  puts "You are the loser"
elsif losses > win
  puts "You are the loser"    
  end

#### BONUS ####
  #Show history of computer and user moves at end.
puts ''
print history