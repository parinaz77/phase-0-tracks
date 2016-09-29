module Shout  #to declare a module
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(name)
    name + " is so happy "+":)"
  end
end
p Shout.yelling_happily("Pari")
p Shout.yell_angrily("Im so mad")