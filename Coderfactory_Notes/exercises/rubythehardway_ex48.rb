class Lexicon
  @@dictionary = {
    'direction' => ['north', 'south', 'east', 'west'],
    'verb' => ['go', 'eat', 'kill', 'jump', 'run',
      'walk'],
    'stop' => ['the', 'in', 'of', 'to', 'a', 'is'],
    'noun' => ['bear', 'princess', 'nose', 'castle', 'cake'],
    'name' => ['snoopy', 'linus', 'lucy']
  }

  def self.scan(text)
    text_elements = text.split(' ')
    result = []

    text_elements.each do |text_element|
      categorized = []

      number = Lexicon.integer?(text_element)
      if (number)
        categorized = ['number', number]
        result.push(categorized)
        next
      end

      @@dictionary.each do |type, list|
        if list.include?(text_element.downcase)
          categorized = [type, text_element]
          result.push(categorized)
          break
        end
      end

      if (categorized.empty?)
        categorized = ['error', text_element]
        result.push(categorized)
      end

    end

    return result
  end

  def self.integer?(object)
    # remove any trailing zeros so the number
    # does not get interpreted as hex
    object.sub!(/^0+/, "")

    begin
      return Integer(object)
    rescue
      return false
    end
  end

end

# class Lexicon
#
#   def self.scan(string)
#     direction = ["up", "down", "left", "right", "east", "west", "north", "south", "back"]
#     verbs = ["go", "stop", "kill", "eat"]
#     stop_words = ["the", "in", "of", "from", "at", "it"]
#     nouns = ["door", "bear", "princess", "cabinet"]
#     numbers = [1,2,3,4,5,6,7,8,9,0]
#
#     arrayed_input = string.split(' ')
#
#     deciphered_input = []
#     arrayed_input.each do |word|
#       pairing = []
#       if direction.include?(word.downcase)
#         pairing << 'direction'
#         pairing << word
#       elsif verbs.include?(word.downcase)
#         pairing << 'verb'
#         pairing << word
#       elsif stop_words.include?(word.downcase)
#         pairing << 'stop'
#         pairing << word
#       elsif nouns.include?(word.downcase)
#         pairing << 'nouns'
#         pairing << word
#       elsif numbers.include?(word.to_i)
#         pairing << 'numbers'
#         pairing << word
#       else
#         pairing << "error"
#         pairing << word
#       end
#       deciphered_input << pairing
#     end
#     return deciphered_input
#   end
#
# end
