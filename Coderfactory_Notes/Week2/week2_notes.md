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
