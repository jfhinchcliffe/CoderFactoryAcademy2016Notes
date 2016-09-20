
class Customer

  attr_accessor

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def get_full_name
    return "#{@first_name} #{@last_name}"
  end

  def get_full_name_upper
    return "#{@first_name} #{@last_name}".upcase
  end

end
