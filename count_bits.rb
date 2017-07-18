def count_bits(n)
  binary = n.to_s(2)
  total = 0
  binary.chars.each do |num|
    total += num.to_i
  end
  total
end
