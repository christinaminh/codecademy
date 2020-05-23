var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage = "hello"
secretMessage = secretMessage.lowercased()

var message = Array(secretMessage)

// compare each letter of secret message to alphabet and shift the letter 3 places to the right
for i in 0..<message.count {
  for j in 0..<alphabet.count {
    if message[i] == alphabet[j] {
      message[i] = alphabet[(j+3) % 26]
      break
    }
  }
}

// print message as a string
print(String(message))

