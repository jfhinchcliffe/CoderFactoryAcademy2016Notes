#sets a string called 'formatter' with values prepended by %
formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter
puts formatter.class
#puts 'formatter' with the values assigned. In this case, 1 to 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#Puts 'formatter', this time assigning words to each value
puts formatter % {first: "Bleep", second: "Blorp", third: "Bluck", fourth: "Ping"}
puts formatter % {first: true, second: false, third: false, fourth: true}
#puts formatter, however puts a copy of formatter in as each value
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
puts "NEW LINE"
puts formatter
#sets formatter to display a group of strings.
puts formatter % {
  first: "I had this thing",
  second: "that you could type upright",
  third: "But it didn't sing",
  fourth: "So i smacked it in the chops"
}
