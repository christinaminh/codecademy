// Write your code below 📼

// Mixtape 101
// Theme: 😎

print(".------------------------.")
print("|    Chill        90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]()

mixtape.append("Milkshake - Portugal the Man")
mixtape.append("Call Me, I Still Love You - Two Feet")
mixtape.append("Depression by Otxheloo")
mixtape.append("Decouverte by Grolox Panicrum")
mixtape.append("A Samurai's Death by Ricko James")
mixtape.append("ily by Surf Mesa")
mixtape.append("The Puppy Song by Harry Nilsson")


mixtape.remove(at: 5)
mixtape.remove(at: 1)
mixtape.insert("Chi by Jesse James", at: 0)

print(mixtape.count)

print("Side A:")
for i in 0..<(mixtape.count/2) {
  print("\(i+1): \(mixtape[i])")
}

print("Side B:")
for i in mixtape.count/2..<mixtape.count {
    print("\(i+1): \(mixtape[i])")
}