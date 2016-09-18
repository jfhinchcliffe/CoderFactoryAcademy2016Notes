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
