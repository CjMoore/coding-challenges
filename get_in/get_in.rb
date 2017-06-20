require 'pry'

def get_in(data, keys)
  data.keys.map do |key|
    new_data = data[keys[0]]
    if new_data.kind_of?(Hash)
      get_in(new_data, keys[1..-1])
    else
      return new_data
    end
  end
end
