class Santa
  attr_accessor :gender, :age, :ethnicity
  attr_reader :age, :ethnicity
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
  def celebrate_birthday
    @age +=1
  end
  def get_mad_at (name)
    if @reindeer_ranking.include?(name)
      @reindeer_ranking.delete(name)
      @reindeer_ranking << name
    end
  end
end
# santa = Santa.new
# santa.eat_milk_and_cookies("yummy")
# santa.speak

# santas = []
# gender_example=["male","female"]
# ethnicity_example=["black","white"]
# gender_example.length.times do |i|
#   santas<<Santa.new(gender_example[i],ethnicity_example[i])
# end
# p santas

# santa=Santa.new("male","white")
# puts"age is #{santa.age} and gender is #{santa.gender}"
# santa.gender = "black"
# puts"now gender is #{santa.gender}"

santas_array=[]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santa=Santa.new(example_genders,example_ethnicities)

10.times do
  santa.age = rand(140)
  santa.gender = example_genders.sample
  santa.ethnicity = example_ethnicities.sample
  puts "Santa gender:#{santa.gender}, age:#{santa.age}, ethnicity:#{santa.ethnicity}"
end


