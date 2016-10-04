a = [1,2,3,4,5,'a','b','c','d',"gun",:top,:bottom,"hat"]
b = [1,3,5,'b','d',"shoe",:top,:top]

def unique_values(first_array,second_array)
  all_vals = first_array + second_array
  uniques = []
  all_vals.each do |val|
    uniques << val unless all_vals.count(val) > 1
  end
  return uniques
end

puts unique_values(a,b)

#a = [1,2,3]
#b = [1,3,5]

def uniq_to(a, b)
  a.reject { |i| b.include?(i) }
end

p uniq_to(a, b) + uniq_to(b, a)

# a = [1,2,3,4]
# b = [1,2,4]
puts (a-b) | (b-a)
