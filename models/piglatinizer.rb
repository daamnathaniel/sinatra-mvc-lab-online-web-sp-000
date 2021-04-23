class PigLatinizer

	def initialize
	end


  def piglatinize(string)
       a = string.split(' ')
       b = a.map {|word| piglatinize_word(word)}
       b.join(' ')
  end

  def piglatinize_word(word)
  	word.downcase
    first,second,third = word[0],word[1],word[2]
    vowels = %w{a e i o u}
    if vowels.include?(first)
        "#{word}way"
  	else
      consonants = []
      consonants << first
        if vowels.include?(second) == false
          consonants << second
          if vowels.include?(third) == false
            consonants << third
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end


end
end
end






