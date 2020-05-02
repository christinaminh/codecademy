movies = {Gladiator: 4}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
  when "add"
    puts "What movie do you want to add?"
    title = gets.chomp.to_sym
    if movies[title] = nil
      puts "What is the rating for #{title}?"
    rating = gets.chomp.to_i
      movies[title] = rating
      puts "#{title} has been added with a rating of #{rating}."
    else 
      puts "That movie already exists in the database!"
    end
  when "update"
    puts "What movie do you want to update?"
    title = gets.chomp.to_sym
    if movies[title] = nil
      puts "That movie does not exist in the database!"
    else
      puts "What is the new rating?"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "The rating for #{title} has been updated to #{rating}."
    end
  when "display"
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end
  when "delete"
    puts "What movie do you want to remove?"
    title = gets.chomp.to_sym
    if movies[title] = nil
      puts "That movie does not exist in the database!"
    else
      movies.delete(title)
      puts "#{title} has been deleted."
    end
  else
    puts "Error! That command does not exist."
end