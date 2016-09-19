class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  attr_accessor :lyrics

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

end

happy_birthday = Song.new(["Happy Birthday to you",
                            "Happy birthday to you",
                            "you look like a monkey",
                            "and you eat like one too"])

puts "Calling happy_birthday.sing_me_a_song:"
puts happy_birthday.sing_me_a_song
#happy_birthday.sing_me_a_song
puts "Calling happy_birthday.lyrics:"
puts happy_birthday.lyrics

lyrics = ["KILLING IN THE NAME OF", "DUH DUMM DUMM DEE DAA WAH DAA WEE"]

ratm = Song.new(lyrics)
puts ratm.lyrics
ratm.sing_me_a_song
