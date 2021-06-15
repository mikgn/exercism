# frozen_string_literal: true

class Pangram
  def self.pangram?(sentence)
    sentence.downcase.gsub(/[^[a-z]]/, '').chars.uniq.size == 26
  end
end

# class Pangram
#   ALPHABET = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

#   def self.pangram?(sentence)
#     (ALPHABET - sentence.downcase.chars).empty?
#   end
# end
