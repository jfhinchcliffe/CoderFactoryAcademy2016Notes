##Modules
You can put a bunch of functions in a module, and then require it
in IRB using 'require "./filename.rb"'

You can then call the methods within this file using the method names.

Eg.

'''
module Ex25

  # This function will break up words for us.
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end
'''
And in IRB we can require the file (ex25.rb) and use the method:

'''
require "./ex25.rb"

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
'''
You can also name the module file whatever you'd like. As long as the module
at the top is called 'module Ex25' then you'll stil be able to require it.

##Debugging
Ruby will display the line that any code errors are in. Use this when debugging.

##Logic

Logic on a computer is all about seeing if some combination of these characters and some variables is true at that point in the program.

* <!-- && (and)
* || (or)
* ! (not)
* != (not equal)
* == (equal)
* >= (greater-than-equal)
* <= (less-than-equal) -->
* true
* false

##Different ways of returning true and false

!false evaluates to: true
!true evaluates to: false

not (true || false) evaluates to: false
not (true || true) evaluates to: false
not (false || true) evaluates to: alse
not (false || false) evaluates to: true

!(true && false)evaluates to: true
!(true && true)	evaluates to: false
!(false && true)	evaluates to: true
!(false && false)	evaluates to: true

1 != 0	evaluates to: true
1 != 1	evaluates to: false
0 != 1	evaluates to: true
0 != 0	evaluates to: false

##Solving boolean expressions

I will also give you a trick to help you figure out the more complicated ones toward the end.

Whenever you see these boolean logic statements, you can solve them easily by this simple process:

1. Find an equality test (== or !=) and replace it with its truth.
2. Find each &&/|| inside parentheses and solve those first.
3. Find each ! and invert it.
4. Find any remaining &&/|| and solve it.
5. When you are done you should have true or false.

##Eg.

First solve each equality test:
3 != 4 && !("testing" != "test" || "Ruby" == "Ruby")

3 != 4 == TRUE, "testing" != "test" == TRUE, "Ruby" == "Ruby"== TRUE
You're left with

TRUE && !(TRUE || TRUE)

evaluate the || / && in parenthsis and evalueate.
You're left with

TRUE && !(TRUE)

Find each ! and invert the expression within it

TRUE && FALSE

This equals FALSE (TRUE AND FALSE == FALSE)

## If / Elsif / else
escape_bear = "I try to open the door"
if escape_bear.downcase.include? "door" checks if 'door' is part of the escape
bear string and returns 'true' if so.

## =~ operator

The equal-tilde operator in ruby is the “match” operator.  It take an regular expression on the left hand side and the string to match on the right hand side.  The expression …
/or/ =~ “Hello World”
will return 7 because a match is found on index 7 of the string.  index starts at 0.
The expression
/abc/ =~ “Hello World”
will return nil because there is no match (doesn't contain a, b or c).

##keywords and data types

[From Learn Ruby the Hard Way](https://learnrubythehardway.org/book/ex37.html)

##Hashes

[Ex39 is a great explanation of Hashes](https://learnrubythehardway.org/book/ex39.html)

# OOP Lesson - Classes and Objects
## Monday 19 Sep
 A class is a 'type' of thing.
 An object is one of these 'things'.
 We create an object and assign it to a variable so that we can work with it.
 Eg. ```Pikachu = Pokemon.new(name: "Pika", size: "L", power: 10)```

 You can use other clases to build out your base class (parent and child)
 Super can call the same method from the parent class (ie. initialize)

 ## PROTIP
 Highlight a variable, press command D and it will highlight other variables of the same name.

You can inherit all the way up to the base class

##Requiring

require "./mystuff.rb"

MyStuff.apple()
This allows us to print a variable that's in a required module. In this case, tangerine
puts MyStuff::TANGERINE

##attr_accessor
calling attr_accessor means that you can access the attribute of the instance.
For example,

'''
def initialize(lyrics)
  @lyrics = lyrics
end

attr_accessor :lyrics
'''

means that I can perform:
'''
happy_birthday = Song.new("LYRICS")
and then call
happy_birthday.lyrics


##Top down development

Take a small piece of the problem; hack on some code and get it to run barely.
Refine the code into something more formal with classes and automated tests.
Extract the key concepts you're using and try to find research for them.
Write a description of what's really going on.
Go back and refine the code, possibly throwing it out and starting over.
Repeat, moving on to some other piece of the problem.

## Resources

http://www.rubyinside.com/media/poignant-guide.pdf

http://poignant.guide/book/chapter-1.html

If you are finding parts of Ruby hard to sink in, this is a quirky yet engaging place to learn! http://poignant.guide/book/chapter-3.html

##Test Driven development

Class unit tests and TDD

Workflow -
we write the test before the code is written
write the code
make the test pass

Red / Green / Refactor

## Getters and Setters

attr_accessor

## AboutArrays

accessing arrays. If you have an array
array = [:peanut, :butter, :and, :jelly]

and pass in array[2,2]
the first 2 says where you should start grabbing values (position 2),and then
the second 2 says how many more values you should traverse.

##Parallel Assignment
Assigning values from an array on the one line.
```
def test_parallel_assignments
  first_name, last_name = ["John", "Smith"]
  assert_equal "John", first_name
  assert_equal "Smith", last_name
end
```
Using the splat value to assign remaining values from an array to one variable
```
def test_parallel_assignments_with_splat_operator
  first_name, *last_name = ["John", "Smith", "III"]
  assert_equal "John", first_name
  assert_equal ["Smith","III"], last_name
end
```
Parallel assignment with only one variable
```
def test_parallel_assignment_with_one_variable
  first_name, = ["John", "Smith"]
  assert_equal "John", first_name
end
```
Getting substrings
```
def test_you_can_get_a_substring_from_a_string
  string = "Bacon, lettuce and tomato"
  assert_equal "let", string[7,3] #starts from position 7, and takes 3.
  assert_equal "let", string[7..9] #starts from position 7 and takes until position 7
end
```
## Read up on
Default values in Arrays
##Go back through Ruby Koans / Ruby the Hard Way.
Check:
* About Strings
* About Hashes
* About Arrays
* About Regular Expressions - particularly find and replace
* About Blocks
* https://learnrubythehardway.org/book/ex44.html
## REREAD ABOUT PROXY OBJECTS. DIDN'T GET THIS AT _ALL_

##Opening / Creating / Working with files in Ruby

r = read only
w = create an empty file for wrtiting
a = append to filer + open a file for reading and wrtiting
w+ = create an empty file for reading and writing if one doesn't exist.

File.new
File.read
File.open
File.write
File.close
File.rewind

 ## Collect and map

Collect / map takes each elemens of an awway, can perform something on them
and then you can return the transformed array. In the examples below,
it adds 10 to each element.

```
 def test_collect_transforms_elements_of_an_array
   array = [1, 2, 3]
   new_array = array.collect { |item| item + 10 }
   assert_equal [11,12,13], new_array

   # NOTE: 'map' is another name for the 'collect' operation
   another_array = array.map { |item| item + 10 }
   assert_equal [11,12,13], another_array
 end
 ```
select where items within an array match a condition (eval to 'true')
 ```
 def test_select_selects_certain_items_from_an_array
   array = [1, 2, 3, 4, 5, 6]

   even_numbers = array.select { |item| (item % 2) == 0 }
   assert_equal __, even_numbers

   # NOTE: 'find_all' is another name for the 'select' operation
   more_even_numbers = array.find_all { |item| (item % 2) == 0 }
   assert_equal __, more_even_numbers
 end
 ```
 Pass a criteria in and find will return the first matching criteria
```
 def test_find_locates_the_first_element_matching_a_criteria
   array = ["Jim", "Bill", "Clarence", "Doug", "Eli"]

   assert_equal "Clarence", array.find { |item| item.size > 4 }
 end
 ```
##Presentation - Bron Thulke
(Twitter)[https://twitter.com/_bron_]
* worked in ASP.net for years
* Went Freelance afterwards
* Currently works for herself

Did the initial big biz experience prove valuable for working at
smaller places in the future?
started n big biz (Logica), moved to small

Freelance show
This Developer's Life
Pluralsite
DDD Melbourne (conference)
Clean COde - Martin Fowler
Writing Good Code - Microsoft
Away from the Keyboard (podcast)
The Hello World Podcast

##Holy shit, inject!
Inject provides a value that you can edit throughout iteration.
In the examples below, the first variable that's within the block
will be returned at the end. Can be modified.
Can also pass a new Array to hold the results (below)
```
def test_inject_will_blow_your_mind
  result = [2, 3, 4].inject(0) { |sum, item| sum + item }
  assert_equal 9, result

  result2 = [2, 3, 4].inject(1) { |product, item| product * item }
  assert_equal 24, result2
  # 1 * 2 = 2
  # 2 * 3 = 6
  # 6 * 4 = 24

  result = [2, 3, 4].inject([]) { |sum, item| sum << item * 2 }
```

##Inheritance
You can super up to the parent class to grab a string from a method, and
even interpolate if you want!
```
class BullDog < Dog
  def bark
    super + ", GROWL"
  end
end

def test_subclasses_can_invoke_parent_behavior_via_super
  ralph = BullDog.new("Ralph")
  assert_equal "WOOF, GROWL", ralph.bark
end
```

## Thursday lecture - Menus in terminal
Use Case statements (also called Switch in other languages)
```
exit = false
until exit do
  command = $stdin.gets.chomp
  case command
    when "1"
      puts "One!"
    when "2"
      puts "Two"
    when "3"
      puts "Three"
    when "Exit"
      exit = true
    else
      "Nahh"
  end
end      
```

##Koans Stuff
Test classes and instances don't share instance variables.
```
class Dog
  attr_accessor :name
end

def Dog.name
  @name
end

def test_classes_and_instances_do_not_share_instance_variables
  fido = Dog.new
  fido.name = "Fido"
  assert_equal "Fido", fido.name
  assert_equal nil, Dog.name
end
```


##William Tio - Guest Speaker
Explained front and back end developers.
Encouraged people starting to code to keep going!

## Ruby the Hard Way - ex44 - Inheritance and Mixins

Ruby has another way to do composition using modules and a concept called mixins. You simply create a module with functions that are common to classes and then include them in your class similar to using a require.

Recheck this - interesting stuff on inheritance, modules etc:
https://learnrubythehardway.org/book/ex44.html

* Avoid something called "meta-programming" at all costs, as it is too complex to be useful reliably. If you're stuck with it, then be prepared to know the class hierarchy and spend time determining where everything is coming from.
* Use composition to package up code into modules that are used in many different unrelated places and situations.
* Use inheritance only when there are clearly related reusable pieces of code that fit under a single common concept or if you have to because of something you're using.
