## Recruiters

Redwolf consulting.

```  var colour = "red"
  var colour = "orange"
  puts colour ```

* Signed up to Github, Codepen, Slack, meetup, heroku

## Important Terminal commands

* cd <directory name> - change directory
* ls - list files in current directory
* touch <dir / filename.extension> - create a file
* atom <filename> - open up the file in atom
* tab - autocomplete file / folder name
* alt <left arrow / right arrow> - jump to start of word in terminal
* mkdir <new directory name> - create a new directory
* rm <directory name> - delete directory
* rm -rf <directory name> - delete directory and all files in the folder
* cp <filename> <new name for filename> - copy file

## Setting up Rails on Mac

* https://github.com/TheCoderFactory/rails-setup-for-mac

## MyEd

Going through a bunch of computer trivia.

## Programming fundamentals with Ruby

Analysis, understanding, design, building, testing (debugging), implementation

Ruby created to be more fun that FORTRAN, BASIC etc.

Use IRB in the console to run through Ruby basics.

Strings can be concatenated together using '+', however this won't work with numbers. Put variables in between #{NUMHERE} to put number types within a string"

In the United States we use an acronym called PEMDAS which stands for Parentheses Exponents Multiplication Division Addition Subtraction. That's the order Ruby follows as well.

## Escape characters in Ruby

Escape	What it does.
\\	Backslash ()
\'	Single-quote (')
\"	Double-quote (")
\a	ASCII bell (BEL)
\b	ASCII backspace (BS)
\f	ASCII formfeed (FF)
\n	ASCII linefeed (LF)
\r	ASCII Carriage Return (CR)
\t	ASCII Horizontal Tab (TAB)
\uxxxx	Character with 16-bit hex value xxxx (Unicode only)
\v	ASCII vertical tab (VT)
\ooo	Character with octal value ooo
\xhh	Character with hex value hh

Use ''' when you need a multi-line string that contains #{} formatting, but you don't want them to be processed yet or at all. Use """ for all other multi-line strings.

## Modifying files

close -- Closes the file. Like File->Save.. in your editor.
read -- Reads the contents of the file. You can assign the result to a variable.
readline -- Reads just one line of a text file.
truncate -- Empties the file. Watch out if you care about the file.
write('stuff') -- Writes "stuff" to the file.

ARGV is a hash which contains all the arguments that are being passed into a file / method.
You can get the first argument by calling for ARGV.first (eg. filename = ARGV.first )

When passing variables to a method, the splat argument (def methodname(*args)) takes any number of variables.

##Function Checklist
Create a function checklist for later exercises. Write these checks on an index card and keep it by you while you complete the rest of these exercises or until you feel you do not need the index card anymore:

* Did you start your function definition with def?
* Does your function name have only characters and _ (underscore) characters?
* Did you put an open parenthesis ( right after the function name?
* Did you put your arguments after the parenthesis ( separated by commas?
* Did you make each argument unique (meaning no duplicated names)?
* Did you put a close parenthesis ) after the arguments?
* Did you indent all lines of code you want in the function two spaces?
* Did you end your function with end lined up with the def above?
* When you run ("use" or "call") a function, check these things:

* Did you call/use/run this function by typing its name?
* Did you put the ( character after the name to run it?
* Did you put the values you want into the parenthesis separated by commas?
* Did you end the function call with a ) character?
* Functions that don't have parameters do not need the () after them, but would it be clearer if  you wrote them anyway?

## In a way, the arguments to a function are kind of like our = character when we make a variable. In fact, if you can use = to name something, you can usually pass it to a function as an argument.

Sorting information:
https://gist.github.com/aspyct/3433278
http://stackoverflow.com/questions/21121075/how-do-i-write-a-merge-sort

Inheritance
https://launchschool.com/books/oo_ruby/read/inheritance

Programs to check:
https://github.com/piscolomo/ruby-patterns

Reading material:
https://github.com/training-mode/ruby/tree/master/intro/05_functions  
