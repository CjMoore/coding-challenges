def character_count(input)
  count_hash = {}

  input.chars.each do |char|
    if count_hash.keys.include?(char)
      count = count_hash[char]
      count_hash[char] = count + 1
    else
      count_hash[char] = 1
    end
  end

  count_hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

character_count("I really want to work for Wingspan")
