def my_global_method(a,b)
  a + b
end

class Cup
  def test
    my_global_method
  end
end
