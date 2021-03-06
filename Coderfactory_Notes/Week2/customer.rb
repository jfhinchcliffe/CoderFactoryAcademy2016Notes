class Customer

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

  def get_full_name_lower
    return "#{@first_name} #{@last_name}".downcase
  end

end
