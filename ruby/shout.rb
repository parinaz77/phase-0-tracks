# module Shout  #to declare a module
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(name)
#     name + " is so happy "+":)"
#   end
# end
# p Shout.yelling_happily("Pari")
# p Shout.yell_angrily("Im so mad")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(name)
    name + " is so happy "+":)"
  end
end

class Angrily
  include Shout
end

class Happily
  include Shout
end

angrily=Angrily.new
angrily.yell_angrily("I am so sad today")
happily=Happily.new
happily.yelling_happily("Anna")
