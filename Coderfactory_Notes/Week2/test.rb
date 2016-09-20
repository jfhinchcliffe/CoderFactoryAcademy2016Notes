require_relative 'customer'
require 'test/unit'

class CustomerTest < Test::Unit::TestCase

  def test_get_full_name_fail
    customer = Customer.new("John", "Smith")
    assert_not_equal("JOHN SMITH", customer.get_full_name)
    assert_equal('John Smith', customer.get_full_name)
  end

  def test_get_full_name_upper
    customer = Customer.new('John', 'Smith')
    assert_equal('JOHN SMITH', customer.get_full_name_upper)
    assert_not_equal('JOHN SmITH', customer.get_full_name_upper)
  end

  def test_get_full_name_lower
    customer = Customer.new('John', 'Smith')
    assert_equal('john smith', customer.get_full_name_lower)
    assert_not_equal('John Smith', customer.get_full_name_lower)
    assert_not_equal('JOHN SmITH', customer.get_full_name_lower)
  end

end
