import UIKit

var greeting = "Hello, playground"

//1)შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).

var fruit = ["banana", "apple", "cherry"]

let firstElemant = fruit[0]
fruit[0] = fruit[fruit.count - 1]
fruit[fruit.count - 1] = firstElemant

print(fruit)



//2)შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).

var numberArray = [4,5,2,3,5,5,78,34,55]
let totalElements = numberArray.count
let elementsToDelete = totalElements / 2

// Check if the total number of elements is odd, in which case we need to keep fewer elements.
if totalElements % 2 == 1 {
    let elementsToKeep = totalElements - elementsToDelete + 1
    numberArray.removeSubrange(elementsToKeep..<totalElements)
} else {
    numberArray.removeSubrange(elementsToDelete..<totalElements)
}

print(numberArray)


//3)შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
var allNumbersArray = [Int](0...10)

var oddNumbersArray = [Int]()
var evenNumbersArray = [Int]()

for number in allNumbersArray {
    if number % 2 == 0 {
        evenNumbersArray.append(number)
    } else {
        oddNumbersArray.append(number)
    }
}

print("Odd Numbers: \(oddNumbersArray)")
print("Even Numbers: \(evenNumbersArray)")



//შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
var doubleTypeArray = [3.4,4.7,8,9,4.6]

// Initialize a variable to store the largest number, assuming the first number is the largest
var biggestNumber = doubleTypeArray[0]

// Loop through the array to find the largest number
for number in doubleTypeArray {
    if number > biggestNumber {
        biggestNumber = number
    }
}

// Print the largest number
print("The biggest number in this array is: \(biggestNumber)")


//შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.

var firstArray = [8, 4, 9, 9, 0, 2]
var secondArray = [1, 0, 9, 2, 3, 7, 0, 1]

var mixeddArray = firstArray + secondArray

var sortedArray = [Int]()

while mixeddArray.count > 0 {
    var min = mixeddArray[0]
    var minIndex = 0
    for (index, element) in mixeddArray.enumerated() {
        if element < min {
            min = element
            minIndex = index
        }
    }
    sortedArray.append(min)
    mixeddArray.remove(at: minIndex)
}

print("Sorted Array is: \(sortedArray)")




//
//შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
let stringName = "mariami"

let characterSet = Set(stringName)

// Check if the count of characters in the set is equal to the count of characters in the original string
if characterSet.count == stringName.count {
    print("All characters in this string are unique.")
} else {
    print("All characters in this string aren't unique.")
}




//შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.
let firstSet: Set<Int> = [12, 6, 33, 46, 5]
let secondSet: Set<Int> = [73, 46, 35, 6, 75]

let union = firstSet.union(secondSet)

let intersection = firstSet.intersection(secondSet)

let difference = firstSet.subtracting(secondSet)

print("Union result is: \(union)")
print("Intersection result is: \(intersection)")
print("Difference result is: \(difference)")




//შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
let setOne: Set<String> = ["mari", "nika", "ana"]
let setTwo: Set<String> = ["mari", "teo", "ana", "dato", "goga"]

let subset = setOne.isSubset(of: setTwo)

if subset {
    print("setOne is a subset of set2.")
} else {
    print("setOne is not a subset of set2.")
}



//შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

let myArray = [14, 5, 33, 46, 9, 1]

let mySet = Set(myArray)

if myArray.count == mySet.count {
    print("ყვლეა განსხვავებულია.")
} else {
    print("შეიცავს მსგავს ელემენტებს")
}




//შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.


var movieRatings = [String: Double]()

movieRatings["la casa de papel"] = 8.5
movieRatings["wyevla"] = 7.0
movieRatings["forsaji"] = 7.3
movieRatings["gaqceva shoushenkidan"] = 9.2
movieRatings["alesili kepebi"] = 9.8

var totalRating = 0.0
var movieCount = 0

for (_, rating) in movieRatings {
    totalRating += rating
    movieCount += 1
}

let averageRating = totalRating / Double(movieCount)

print("Average Rating of the Movies: \(averageRating)")

