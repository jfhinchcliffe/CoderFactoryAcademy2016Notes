# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if (a <= 0 || b <= 0 || c <= 0) || ( a + b <= c || b + c <= a || a + c <= b)
    raise TriangleError, "Invalid Triangle Parameters!"
  else
    if a == b && a == c
      return :equilateral
    # Big dirty expression which checks that one is the same and one is different.
    elsif a != b && a != c && b != c
      return :scalene
    #elsif ((a == b && a != c) || ( a == b && a != c)) || ((b == a && b != c) || ( b == c && b != a)) || ((c == a && b != c) || ( c == b && c != a))
    #  return :isosceles
    else
      return :isosceles
    end
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end