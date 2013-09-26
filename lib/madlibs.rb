# Kai says I don't need to require anything unless I need code from those files.
# require_relative 'lovesong.txt'
# require_relative 'finished_madlibs'
# require_relative 'content_words_hash'
# File.expand_path('lovesong.txt', File.dirname(__FILE__))

puts "What's your name?"
name = gets.chomp

user_words = Hash.new
content_words = Hash.new

content_words = {
	love: 'musical genre',
	evening: 'noun',
	patient: 'noun',
	# deserted: 'adjective',
	# muttering: 'gerund',
	# restless: 'adjective',
	# sawdust: 'noun',
	# restaurants: 'plural noun',
	# oyster: 'animal',
	# tedious: 'adjective',
	# insidious: 'adjective',
	# oh: 'exclamation',
	# make: 'verb',
	# overwhelming: 'adjective',
	# lead: 'verb',
	# a_hundred: 'number',
	# yellow: 'color',
	# talking: 'gerund',
	# women: 'plural noun',
}

# use method get_word to prompt user for replacement words
# populate the hash user_words with their input

def get_word(word)
	puts "Give me a #{word}."
	input = gets.chomp
	return input
end

def build_second_hash(first_hash, second_hash)
  first_hash.each do |key, value| 
  	replacement = get_word(value)
    second_hash[key.to_sym] = replacement
  end
  return second_hash
end

user_words = build_second_hash(content_words, user_words)

# save progress:

File.open("prufrock_word_lists.md", "a+") do |file| 
  file.write("\n#{Time.now.asctime}:\nThe #{user_words[:love]} song of J. #{name} Prufrock: 
  	\n#{name}'s' list saved as: 
  	\n #{name.downcase} = #{user_words}. \n\n")
    end
# automatically add line breaks between each line, 
# add each line to an array

def file_to_array(filename)
	file = File.open(filename, 'r')
	file.each_line do |line|
		arr = []
		arr.push(line + "\n")
		return arr
	end
end

file_path = File.expand_path('lovesong.txt', File.dirname(__FILE__))
a = File.open(file_path)
b = File.read(a)
user_words.each do |key, value|
  your_poem = b.gsub(key.to_s, value)
  return your_poem
end

puts your_poem

# Save to a file: 
File.open("The_#{user_words[:love]}_Song_of_J_#{name}_Prufrock.md", "a+") do |file| 
  file.write("\nThe #{user_words[:love]} song of J. #{name} Prufrock: 
  	\n#{Time.now.asctime}
  	\n#{your_poem}\n\n")
end