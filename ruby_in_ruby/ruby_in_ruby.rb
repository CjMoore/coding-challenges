require 'pry'

class SimpleArray
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end

  def first
    puts @data[0]
  end

  def last
    puts @data[-1]
  end

  def join(connect="")
    joined = ""
    @data.each do |element|
      joined = joined + element + connect
    end
    if joined[-1] != connect
      puts joined
    else
      puts joined[0...-1]
    end
  end

  def count
    counter = 0
    @data.each do |element|
      counter += 1
    end
    puts counter
  end
end

an_array = SimpleArray.new(['a', 'b', 'c'])
an_array.first
an_array.last
an_array.join
an_array.join("-")
an_array.count

class SimpleString
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end

  def length
    counter = 0
    @data.chars.each do |char|
      counter += 1
    end
    puts counter
  end

  def end_with?(ending = "")
    ending_length = ending.length
    if @data[-ending_length..-1] == ending
      puts true
    else
      puts false
    end
  end

  def upcase
    upcase_map = {'a' => 'A', 'b'=>'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F',
                  'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L',
                  'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q' => 'Q', 'r' => 'R',
                  's' => 'S', 't' => 'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' =>'X',
                  'x' => 'X', 'y' => 'Y', 'z' => 'Z'}
    upcased = ""
    @data.chars.each do |char|
      upcased = upcased + upcase_map[char]
    end
    puts upcased
  end

  def add_strings(second_string)
    added = @data
    second_string.chars.each do |char|
      added = added + char
    end
    puts added
  end
end

a_string = SimpleString.new("hello")
a_string.length
a_string.end_with?("o")
a_string.end_with?("x")
a_string.end_with?("ello")
a_string.end_with?("hllo")
a_string.upcase
a_string.add_strings("BYE")
