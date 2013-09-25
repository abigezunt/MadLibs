require_relative 'lovesong'

content_words = Hash.new

content_words = {
	evening: 'noun',
	patient: 'noun',
	deserted: 'adjective',
	muttering: 'gerund',
	restless: 'adjective',
	sawdust: 'noun',
	restaurants: 'plural noun',
	oyster: 'animal',
	tedious: 'adjective',
	insidious: 'adjective',
	oh: 'exclamation',
	make: 'verb',
	overwhelming: 'adjective',
	lead: 'verb',
	a_hundred: 'number',
	yellow: 'color',
	talking: 'gerund',
	women: 'plural noun',
}

If content_words.length > 2
def prompt
	print "> "
end

def build_hash(filename)
	file = File.open
	poem = File.read
	puts 'identify any content words in these lines, and their parts of speech.'
	poem.each_line do |line|
		puts line
		while input
		  input = gets.chomp
		  input1, input2 = gets.chomp.split(", ")
		  content_words = {input1: 'input2'}
		end
	end
end

