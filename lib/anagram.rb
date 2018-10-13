class Anagram
	attr_accessor(:str)
	def initialize(str)
		@str = str
	end

	def match(input_match)
		if input_match.is_a? String
			input_match = input_match.split(' ')
		end

		input_match.select {|word|
			word.chars.sort == @str.chars.sort
		}
	end
end