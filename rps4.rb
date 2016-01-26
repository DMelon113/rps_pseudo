#set win variable to zero
win = 0
#set loses variable to zero
losses = 0
#Prompt user to chose r, p or s
puts "Choose r, p, or s"
#get user input, set to choice variable, make sure it's lowercase
choice = gets.chomp.downcase
#Select computer choice randomly from arrary, set to variable computer
3.times do
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

end

puts win
puts losses

#### BONUS ####
  #Show history of computer and user moves at end.

