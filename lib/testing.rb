file_path = File.expand_path('lovesong.txt', File.dirname(__FILE__))

a = File.open(file_path)
b = File.read(a)
c = 'evening'
d = 'elephant'
e = b.gsub(c, d)

puts e