class Anagram
  def initialize(word)
    @word = word
  end

  def match(possible_ans)
    anagrams = []
    possible_ans.each do |ans|
      skip if @word.downcase == ans.downcase
      anagrams << ans if @word.downcase.chars.sort == ans.downcase.chars.sort
    end
    anagrams
  end
end
