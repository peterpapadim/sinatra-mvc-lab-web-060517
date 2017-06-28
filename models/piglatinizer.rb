class PigLatinizer
attr_accessor :text

  @@vowels = ["a", "e", "i", "o", "u"]



  def initialize(text="")
    @text = text
  end

  def piglatinize(word)
      first_vowel = word.downcase.chars.find_index { |i| @@vowels.include?(i)}
      if first_vowel == 0
        new_word = word.chars.slice(first_vowel..-1).join
        new_word += "way"
      else
        new_word = word.chars.slice(first_vowel..-1).join
        new_word += word.chars.slice(0..(first_vowel - 1)).join + "ay"
      end
    # @text.split.map do |word|
    #
    #   first_vowel = word.downcase.chars.find_index { |i| @@vowels.include?(i)}
    #   if first_vowel == 0
    #     new_word = word.chars.slice(first_vowel..-1).join
    #     new_word += "way"
    #   else
    #     new_word = word.chars.slice(first_vowel..-1).join
    #     new_word += word.chars.slice(0..(first_vowel - 1)).join + "ay"
    #   end
    # end.join(" ")
  end

  def to_pig_latin(phrase=@text)
    phrase.split.map do |word|
    piglatinize(word)

    end.join(" ")


  end



end
