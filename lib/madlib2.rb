# Kai says I don't need to require anything unless I need code from those files.
# require_relative 'lovesong'
# require_relative 'finished_madlibs'
# require_relative 'content_words_hash'

puts "What's your name?"
name = gets.chomp

user_words = Hash.new
content_words = Hash.new

content_words = {
	love: 'musical genre',
	evening: 'noun',
	patient: 'noun',
	deserted: 'adjective',
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

File.open('prufrock_word_lists.md', "a+") do |file| 
  file.write("\nThe #{user_words[:love]} song of J. #{name} Prufrock: 
  	\n#{Time.now}
  	\n#{name}'s' list saved as: 
  	\n #{name.downcase} = #{user_words}. \n\n")
    end
# automatically add line breaks between each line, 
# add each line to an array

def file_to_array(filename)
	file = File.open(filename)
	file.each_line do |line|
		arr = []
		arr.push(line + "\n")
		return arr
	end
end

def build_new_poem(arrayed_poem, hash)
  hash.each do |key, value|
  	new_poem = Array.new
    new_poem = arrayed_poem.each.to_s.gsub(/key/, value)
    return new_poem
  end
end


file_path = File.expand_path('madlibs/lovesong.txt', File.dirname(__FILE__))
poem = file_to_array(file_path)
your_madlib = build_new_poem(poem, user_words)

# Save to a file: 
File.open('finished_madlibs.md', "a+") do |file| 
  file.write("\nThe #{user_words[:love]} song of J. #{name} Prufrock: 
  	\n#{Time.now}
  	\n#{your_madlib}\n\n")
end

# Unused Ideas Repository:

# ## Try this next: arrayed_poem = poem.split(/\s{3,}/)

# search for words from my hash in each line and 
# replace them with their replacements from user_words hash

# user_words.each do |key, value|
# 		poem.each do |line|
# 			words = line.split(" ")
# 			if words.include?(key)
# 				i = words[key].index 
# 				words.delete_at(i)
# 				words.insert(i, user_words[key])
# 			end
# 		end
# end

# 

#
# internet also says:
#File.open(file_name, "w") {|file| file.puts output_of_gsub}


# File.write('my_hash.txt', 'w+')

# File.open(yourfile, 'w') { |file| file.write("your text") }

# File.open(file_name, "w") {|file| file.puts output_of_gsub}

