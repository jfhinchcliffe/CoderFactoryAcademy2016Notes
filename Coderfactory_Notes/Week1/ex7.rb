customers = [
  { 'name' => 'Pedro', 'star_sign' => 'Taurus', 'age' => 21 },
  { 'name' => 'Jason', 'star_sign' => 'Pisces', 'age' => 33 },
  { 'name' => 'Lucy', 'star_sign' => 'Capricorn', 'age' => 54 }
]

customers.each do |customer|
  customer.each do |k, v|
    puts "#{k}: #{v}"
  end
  puts "=" * 15
end

customers.each do |customer|
  puts 'Customer Details:'
  puts "Name: #{customer['name']}"
  puts "Star Sign: #{customer['star_sign']}"
  puts "Age: #{customer['age']}"
  puts "--" * 12
end
