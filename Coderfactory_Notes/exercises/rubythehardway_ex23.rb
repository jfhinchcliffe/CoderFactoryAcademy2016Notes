class Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = damage_rating
    @abilities = occupation_abilities
  end

  def greet
    greeting = ["Hello"]
    greeting << unique_greeting_line
    greeting
  end

  def unique_greeting_line
    raise "You must define unique_greeting_line"
  end

  def damage_rating
    10
  end

  def occupation_abilities
    []
  end

  def attack
    "Atack dealing #{damage} damage"
  end
end

class Warrior < Hero
  def damage_rating
    15
  end

  def occupation_abilities
    [:strike]
  end

  def unique_greeting_line
    "Warrior is ready to fight!"
  end
end

class Mage < Hero
  def damage_rating
    7
  end

  def occupation_abilities
    [:magic_spell]
  end

  def unique_greeting_line
    "Mage is ready to make powerful spells!"
  end
end

x = Mage.new
puts x.class
puts x.damage_rating
puts x.occupation_abilities
puts x.unique_greeting_line
puts x.attack

y = Warrior.new
puts y.class
puts y.damage_rating
puts y.occupation_abilities
puts y.unique_greeting_line
puts y.attack
