

def get_max_profit(sdy)
  puts "Buy: #{sdy.min}, Sell: #{sdy.max}"
end


stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

p = get_max_profit(stock_prices_yesterday)

#Imagine you have two array 
#a = [1,2,3,4,5] and b =[3,2,9,3,7], 
#write a program to find out common elements in both array.

a = [1,2,3,4,5]
b =[3,2,9,3,7]

def find_common_elements(a,b)
  c = []
  a.each.map {|x| c << x if b.include?(x)}.join
end

puts find_common_elements(a,b)

# “Imagine an app where users can follow/unfollow other users. 
# Explain the relationship model that you would implement to support this.” 
# Then you can add “Imagine you can sort your followers. How would you implement that?

# An example of this would be asking:“Write an algorithm that divides one number by another, 
# without using the division operator.
# ”Once they give you an answer, ask them to make it better than O(n). 
# If they don’t have an answer, hint “try a recursive function”.

