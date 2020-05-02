puts "Give me a phrase"
text = gets.chomp
text.downcase!
puts "How many words would you like to redact?"
redact = gets.chomp
redacts = redact.split(" ")

words = text.split(" ")

words.each do |word|
  if redact.include? word
    print "REDACTED "
  else
    print word + " "
  end
end