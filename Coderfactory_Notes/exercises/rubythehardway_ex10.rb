tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split \non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat Food
\t* Fishies
\t* Catnip\n\t* Grass
"""
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# Escape	What it does.
# \\	Backslash ()
# \'	Single-quote (')
# \"	Double-quote (")
# \a	ASCII bell (BEL)
# \b	ASCII backspace (BS)
# \f	ASCII formfeed (FF)
# \n	ASCII linefeed (LF)
# \r	ASCII Carriage Return (CR)
# \t	ASCII Horizontal Tab (TAB)
# \uxxxx	Character with 16-bit hex value xxxx (Unicode only)
# \v	ASCII vertical tab (VT)
# \ooo	Character with octal value ooo
# \xhh	Character with hex value hh

jasons_cat = "\a a \b b \f f \n n \r r \t t \v v \n Jasons Cat"
puts jasons_cat

checking = "#{jasons_cat}"
puts checking
checking = '#{jasons_cat}'
puts checking

# Use ''' when you need a multi-line string that contains #{} formatting,
# but you don't want them to be processed yet or at all. Use """ for all other multi-line strings.
