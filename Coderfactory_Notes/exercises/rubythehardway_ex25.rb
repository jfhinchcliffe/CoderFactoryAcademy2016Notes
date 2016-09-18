module Ex25

  #this function breaks words up
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  #sorts the words
  def Ex25.sort_words(words)
    return words.sort
  end

  def Ex25.print_first_word(words)
    word = words.shift
    return word
  end

  #prints the first word after shifting it off
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  #takes a full sentence and returns the sorted words
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  #prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_words(words)
  end

  #sorts the words and prints the first and last one
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  def test_method(sentence)
    puts "TEST #{sentence}"
  end

end
