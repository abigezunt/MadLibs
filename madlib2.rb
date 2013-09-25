require_relative 'lovesong'


user_words = Hash.new
parts_of_speech = Hash.new

parts_of_speech = {
	evening: 'noun'
	patient: 'noun'
	deserted: 'adjective'
	muttering: 'gerund'
	restless: 'adjective'
	sawdust: 'noun'
	restaurants: 'plural noun'
	oyster: 'animal'
	tedious: 'adjective'
	insidious: 'adjective'
	oh: 'exclamation'
	make: 'verb'
	overwhelming: 'adjective'
	lead: 'verb'
	a_hundred: 'number'
	yellow: 'color'
	talking: 'gerund'
	women: 'plural noun'
}


# use method get_word to prompt user for replacement words
# populate the hash user_words with their input

def get_word(word)
	puts "Give me a #{parts_of_speech[word.to_sym]}."
	input = gets.chomp
	user_words[word: input]
end

parts_of_speech.each do |key, value| 
	get_word(parts_of_speech[key])
end


# automatically add line breaks between each line, 
# add each line to an array

def file_to_array(filename)
	file = File.open(filename)
	file.each_line do |line|
		arr = []
		arr.push line + "\n"
		return arr
	end
end

poem = file_to_array('lovesong')


# search for words from my hash in each line and 
# replace them with their replacements from user_words hash

user_words.each do |key, value|
	
		poem.each do |line|
			words = line.split(" ")
			if words.include?(key)
				i = words[key].index 
				words.delete_at(i)
				words.insert(i, user_words[key])
			end
		end
end

# Trying 
# user_words.each do |key, value|
# 		my_poem.sub(key.to_s, "#{" + key + "}")
# end
# internet also says:
#File.open(file_name, "w") {|file| file.puts output_of_gsub}



File.write('my_hash.txt', 'w+')

File.open(yourfile, 'w') { |file| file.write("your text") }

File.open(file_name, "w") {|file| file.puts output_of_gsub}

