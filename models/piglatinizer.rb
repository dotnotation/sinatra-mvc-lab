class PigLatinizer
    attr_reader :word
    
    def initialize
        @word = word
    end

        #split sentence into words
        #take user_input and if starts with [a,e,i,o,u] add "way" to end of word
        #if it starts with a consonant, take all consonant from front add to back and add "ay"
    def split_sentence(user_input)
        @word_array = user_input.split(" ")
    end

    def vowel?(word)
        word = word.downcase
        ["a", "e", "i", "o", "u"].include?(word[0])
    end

    def piglatinize(user_input)
        split_sentence(user_input)
        pig_latin = @word_array.map do |w|
            if vowel?(w)
                w + "way"
            else
                w.split(/([aeiou].*)/).rotate.join("")+"ay"
            end
        end
        pig_latin.join(" ")
    end

end