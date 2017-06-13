require 'pry'
class String
  def self.validate(input)
    open_options = ['[', '{', '(']
    close_options = [']', '}', ')']
    match_options = ['[]', '{}', '()']
    input_openers = []
    input_closers = []

    input.chars.each_with_index do |bracket, index|
      if (index + 1)< input.chars.length && index > 0  && match_options.include?(bracket + input.chars[index + 1]) || match_options.include?(input.chars[index - 1] + bracket)

      elsif index == 0 && match_options.include?(bracket + input.chars[index + 1])

      else
        input_openers << bracket if open_options.include?(bracket)
        input_closers << bracket if close_options.include?(bracket)
      end
    end

    input_closers.each do |closer|
      pair = input_openers[-1] + closer
      if match_options.include?(pair)
        input_openers.pop
      end
    end.pop
    input_openers.empty? && input_closers.empty?
  end
end

test_string = '([[]{}])'

simple = '()'

invalid = '([)]'

# String.validate(test_string)
String.validate(simple)
# String.validate(invalid)
