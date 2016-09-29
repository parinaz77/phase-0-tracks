class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender=gender
    @ethnicity=ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age=0
  end
  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end
  def eat_milk_and_cookies(type)
    puts"that was a good #{type}"
  end
end
# santa = Santa.new
# santa.eat_milk_and_cookies("yummy")
# santa.speak

santas = []
gender_example=["male","female"]
ethnicity_example=["black","white"]
gender_example.length.times do |i|
  santas<<Santa.new(gender_example[i],ethnicity_example[i])
end

