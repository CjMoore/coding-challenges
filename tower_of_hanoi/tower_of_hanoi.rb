require 'pry'
class Tower
  attr_reader :posts
  def initialize(posts = {"A" => [3,2,1], "B" => [], "C" => []})
    @posts = posts
  end

  def move!(from = self.posts["A"], to = self.posts["C"], extra = self.posts["B"]) #add args / modify method signature if you like
    binding.pry
  end
end

t = Tower.new
t.move!
t.posts
