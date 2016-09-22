def one(snafu, &block)
  puts "WAHH"
  puts "SNAFU #{snafu}"
  i = 7
  yield
  puts "WAHHH AGAIN"
end

def andagain
  puts "SHNEEMS"
end

one("snafu") { andagain }
