require 'pry'

def get_in(data, keys)
  final_data = nil
  keys.each do |key|
    data = data[key]
    final_data = data
  end
  final_data
end
