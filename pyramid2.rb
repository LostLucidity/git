height = ARGV[0].to_i
word = ARGV[1]
output = ""
height.times do |i|
	output << " " * (height - (i + 1)) * word.length
	output << word * ((i + 1) * 2)
	output << "\n"
end
puts output