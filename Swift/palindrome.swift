var text = ["h", "e", "l", "l", "o"]
var reversed = [String]()
// var counter = text.count - 1

// while counter >= 0 {
//   reversed.append(text[counter])
//   counter -= 1
// }

// if text == reversed {
//   print("We have a palindrome!")
// } else {
//   print("We don't have a palindrome.")
// }



// try rewriting the code using a for-in loop
// for letter in text {
//   reversed.insert(letter, at: 0)
// }

// print(reversed)



// try rewriting the code using a stride() function.

for i in stride(from: text.count - 1, to: -1, by: -1) {
    reversed.append(text[i])
}

print(reversed)