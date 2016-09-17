puts "Let's practice EVERY DAMN THING"
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs"

poem = "
\t the lovely world
with logic so firmly planted
cannot discern \n the seeds of love
nor comprehend  passion from intuition
and requires an explanation
\n\twhen there is none."

puts "---------"
puts poem
puts "---------"

five = 10 - 2 + 3 - 6
puts five

def secret_formula(started)
  jelly_beans = started * 1000
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
secret_formula(start_point).class
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)
