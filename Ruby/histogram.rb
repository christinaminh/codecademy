# ask user for string
puts "Give me a phrase."
text = gets.chomp
words = text.split(" ")
# create new hash with default value 0
frequencies = Hash.new(0)
# iterate over words to add each word to frequencies hash as a key
# for each word found, increment its value by 1
words.each do |word|
  frequencies[word] += 1
end
# sort frequencies hash by word count
frequencies = frequencies.sort_by do |word, frequency|
  frequency
end
# reverse the sorted array
frequencies.reverse!
# display words and frequency of each word
frequencies.each do |word, frequency| 
  puts "#{word} #{frequency}"
end
