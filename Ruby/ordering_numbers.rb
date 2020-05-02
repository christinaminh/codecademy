# define alphabetize method with 2 parameters: 
# arr, representing the array to be passed in, 
# and rev, a boolean that defaults to false.
def alphabetize(arr, rev=false)
# sort array in acsending order
  arr.sort!
# if rev is true, sort array in reverse, descending order
# else, leave array sorted in acsendind order
  if rev 
    arr.reverse!
  else
    arr
  end
end

# new array called numbers
numbers = [1, 5, 12, 6, 10]

# call the alphabetize method with the number array as the parameter and display the result in reverse order
puts alphabetize(numbers, true)