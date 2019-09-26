class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(*possible_ans)
    @word_arr = @word.split('')
    @arr_of_possible_an_spl = possible_ans.map { |possible_an| possible_an.map { |a| a.split('') } }

    anagrams = []

    @arr_of_possible_an_spl.each do |possible_an_spl|
      possible_an_spl.each do |word|
        anagrams << word if @word_arr.sort == word.each { |l| l.downcase }.sort
      end
    end

    anagrams = anagrams.map { |i| i.join }
    anagrams.delete(@word)
    anagrams
  end
end

