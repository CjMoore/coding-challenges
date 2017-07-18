def array_diff(a, b)
  a.collect { |elem| elem unless b.include?(elem) }.compact
end
