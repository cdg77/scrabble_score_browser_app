class String
  define_method(:scrabble) do
    score_guide = Hash.new()
    score_guide.store('A', 1)
    score_guide.store('E', 1)
    score_guide.store('I', 1)
    score_guide.store('O', 1)
    score_guide.store('U', 1)
    score_guide.store('L', 1)
    score_guide.store('N', 1)
    score_guide.store('R', 1)
    score_guide.store('S', 1)
    score_guide.store('T', 1)
    score_guide.store('D', 2)
    score_guide.store('G', 2)
    score_guide.store('B', 3)
    score_guide.store('C', 3)
    score_guide.store('M', 3)
    score_guide.store('P', 3)
    score_guide.store('F', 4)
    score_guide.store('H', 4)
    score_guide.store('V', 4)
    score_guide.store('W', 4)
    score_guide.store('Y', 4)
    score_guide.store('K', 5)
    score_guide.store('J', 8)
    score_guide.store('X', 8)
    score_guide.store('Q', 10)
    score_guide.store('Z', 10)

    result = 0

    split_letters = self.split("")

    split_letters.each() do |letter|
      points = score_guide.fetch(letter)
      result = points + result
    end

    return result
  end
end
