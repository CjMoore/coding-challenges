require 'pry'

class StringReverser

  def self.reverse(string)
    reversed = []
    string.chars.each do |char|
      reversed.unshift(char)
    end
    puts reversed.join
  end

  def self.length(string)
    i = 0
    string.chars.each do |char|
      i = i+1
    end
    puts i
  end
end

string = "dogs are cool"

StringReverser.reverse(string)

StringReverser.length(string)
