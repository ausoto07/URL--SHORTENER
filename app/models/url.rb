class Url < ApplicationRecord
  def self.random_char
    # select a random element from an array of characters
    all_chars = ('a'..'z').to_a

    return all_chars.sample
  end

  def self.random_string(num_chars = 4)
    output = ""

    num_chars.times do |char|
      output << self.random_char
    end
    return output
  end

end
