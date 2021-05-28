# frozen_string_literal: true

class Acronym
  FIRST_LETTER_PATTERN = /\b[[:alpha:]]/

  def self.abbreviate(phrase)
    phrase.scan(FIRST_LETTER_PATTERN).join.upcase
  end
end
