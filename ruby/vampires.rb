def vampire
  puts"how many employee for today?"
  number=gets.chomp
  i=1
  while i<=number.to_i
    puts"what is your name?"
    name=gets.chomp
    puts"how old are you?"
    age=gets.chomp
    puts"what year were you born?"
    year=gets.chomp
    puts"Our company cafeteria serves garlic bread. Should we order some for you?"
    bread=gets.chomp
    puts"Would you like to enroll in the company’s health insurance?"
    insurance=gets.chomp
    correct_age= 2016-year.to_i
    puts"enter name of any allergies you have, enter done when finished"
    allergy=""
    value=true
    until allergy=="done"
      allergy=gets.chomp
      if allergy == "sunshine"
        puts"--Probably a vampire--"
        value=false
        break
      end
    end
    if value==true
      if correct_age==age && (bread=="yes" || insurance=="yes")
        puts"--probably not a vampire--"
      elsif correct_age!=age && (bread=="no" || insurance=="no")
        puts"--probably a vampire--"
      elsif name.downcase=="drake cula" || name.downcase=="tu fang"
        puts"--definitelty a vampire--"
      else
        puts"--Results inconclusive--"
      end
      i+=1
    end
  end
end
p vampire
