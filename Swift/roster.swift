var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// print names of all students
var allStudents: Set = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

for student in allStudents {
  print(student)
}

print("Total students: \(allStudents.count)")

// print which students aren't taking any language classes
var language: Set = german101.union(spanish101)
var noLanguage: Set = allStudents.subtracting(language)

print("\nStudents not taking language classes: \(noLanguage)")

// print which students are taking either spanish or german but not both
var spanishOrGerman: Set = german101.symmetricDifference(spanish101)

print("\nStudents taking either German or Spansih exclusively: \(spanishOrGerman)")

// print which students are taking spanish101, german101, and englishLiterature
var languageAwardWinners: Set = spanish101.intersection(german101).intersection(englishLiterature)

print("\nLanguage Award Winners (taking 3 language classes: \(languageAwardWinners)")

// print which classes have 7+ students
var sevenPlus = 0
var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for aClass in classSet {
  if aClass.count >= 7 {
    sevenPlus += 1
  }
}

print("\nThere are \(sevenPlus) classes with 7 or more students.")

// The student "Skyla" has transferred to a new school. Delete the student from any classes they are currently enrolled in
spanish101.remove("Skyla")
german101.remove("Skyla")
englishLiterature.remove("Skyla")
computerScience.remove("Skyla")
artHistory.remove("Skyla")
advancedCalculus.remove("Skyla")

// The students from the computerScience class and advancedCalculus class are going on a field trip. Print which students are going on a field trip

var fieldTrip: Set = computerScience.union(advancedCalculus)

// print("\nStudents going on science field trip: \(fieldTrip)")

// The day of the field trip, there is a test in german101. Remove any students in fieldTrip who are also in german101.
fieldTrip = fieldTrip.subtracting(german101)

print("\nStudents going on science field trip: \(fieldTrip)")

