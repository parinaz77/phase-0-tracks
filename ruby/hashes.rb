def create_client
  new_client={}   #create a new hash
  puts"enter client name"
  name=gets.chomp #ask for user data
  new_client[:name]=name  #add user data to hash and assign the symbol to it
  puts "enter age"
  age=gets.chomp  #ask for user data
  new_client[:age]=age #add user data to hash and assign the symbol to it
  puts "enter number of children"
  children=gets.chomp  #ask for user data
  new_client[:children]=children #add user data to hash and assign the symbol to it
  puts"enter decor theme"
  theme=gets.chomp #ask for user data
  new_client[:theme]=theme #add user data to hash and assign the symbol to it
  p new_client #print the hash back to the screeen

  puts"Do you need to update any keys?Enter the key name or none for no"
  answer = gets.chomp #ask user to update any keys if needed
  if answer == "none" #if user says none, we dont need to update any keys
    puts"great!"
  elsif answer == ":name" #if user needs to update the name
    puts"enter name"
    new_client[:name]=gets.chomp #ask for new name and update name value in hash
  elsif answer == ":age" #if user needs to update age
    puts"enter age"
    new_client[:age]=gets.chomp #ask for new age and update age value in hash
  elsif answer == ":children" #if user needs to update children
    puts"enter number of children"
    new_client[:children]=gets.chomp #ask for new children and update children value in hash
  elsif answer == ":theme" #if user needs to update theme
    puts"enter theme"
    new_client[:theme]=gets.chomp #ask for new theme and update theme value in hash
  end
  new_client
end

p create_client

