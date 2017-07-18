class Haiku
  attr_reader :words,
              :desired_word,
              :desired_sub_arr
  def initialize
    @words = [["like", "a", "tweet", "what", "for", "world", "whale", "one", "last", "sun"],
    ["ocean", "beauty", "tweet", "monster", "yellow", "return", "despair", "flower", "return", "contrast"],
    ["romantic", "curious", "banana", "jealousy", "tactlessly", "remorseful", "follower", "elephant", "however", "instagram"],
    ["salmonella", "consequently", "irregular", "intelligence", "vegetable", "ordinary", "alternative", "watermelon", "controversial", "marijuana"],
    ["lackadaisical", "serendipity", "colonoscopy", "dramatically", "parsimonius", "imagination", "electricity", "diabolical", "deforestation", "abomination"],
    ["extraterrestrial", "onomatopoeia", "responsibility", "revolutionary", "generalisation", "enthusiastically", "biodiversity", "veterinarian", "characteristically", "indefatigable"],
    ["oversimplification", "individuality", "decriminalisation", "compartmentalisation", "anaesthesiologist", "industrialisation", "buckminsterfullerene", "irresponsibility", "autobiographical", "utilitarianism"]]
  end

  def build(haiku_as_array)
    puts line(haiku_as_array[0]), line(haiku_as_array[1]), line(haiku_as_array[2])
  end

  def line(first)
    haiku_words = []
    first.each do |num|
      finder(num)
      haiku_words << words[desired_sub_arr][desired_word]
    end
    return haiku_words.join(" ")
  end

  def finder(num)
    @desired_sub_arr = num.to_s.split('')[0].to_i - 1
    @desired_word = num.to_s.split('')[1].to_i
    return desired_word, desired_sub_arr
  end
end

haiku = Haiku.new
haiku.build([[52], [17, 23, 39, 18], [33, 22]])
