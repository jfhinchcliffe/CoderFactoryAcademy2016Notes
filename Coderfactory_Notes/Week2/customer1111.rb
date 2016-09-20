class Customer

  def initialize(customer, hair_colour)
    @customer = customer
    @hair_colour = hair_colour
  end

  def print_customer_details
    puts "Customer details:"
    puts "Name: #{@customer['name']}"
    puts "Starsign: #{@customer['starsign']}"
    puts "Age: #{@customer['age']}"
    puts "Hair colour: #{@hair_colour}"
  end

  def change_name(new_name)
    @customer['name'] = new_name
  end

  def can_drink
    if @customer['age'] >= 18
      puts "Can Drink"
    else
      puts "Can't Drink"
    end
  end

end

class Member < Customer

  def initialize(customer, hair_colour)
    super(customer, hair_colour)
    @customer_number = new_customer_number
  end

  def new_customer_number
    rand(1000)
  end

  def print_customer_details
    super
    self.customer_number
  end

  def can_drink
    puts 'YOU BET HE CAN'
  end

  def customer_number
    puts "Customer Number #{@customer_number}"
  end

end

pedro = Customer.new({"name" => "Pedro", "starsign" => "Pisces", "age" => 20 }, "blonde")
pedro.print_customer_details
pedro.can_drink
pedro.change_name("Stu")
pedro.print_customer_details
ruegen = Member.new({"name" => "ruegen", "starsign" => "Pisces", "age" => 20 }, "blonde")
ruegen.can_drink
ruegen.customer_number
ruegen.print_customer_details
