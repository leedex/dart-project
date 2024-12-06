import 'dart:core';

// Define Variables
void defineVariables() {
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print("Int: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Bool: $myBool");
  print("List: $myList");
}

// Type Conversion
int stringToInt(String value) => int.parse(value);
double stringToDouble(String value) => double.parse(value);
String intToString(int value) => value.toString();
double intToDouble(int value) => value.toDouble();

// Function for Conversion
void convertAndDisplay(String numberStr) {
  int numberInt = stringToInt(numberStr);
  double numberDouble = stringToDouble(numberStr);

  print("String '$numberStr' to Int: $numberInt");
  print("String '$numberStr' to Double: $numberDouble");
}

// Control Flow: If-Else Statements
void checkNumberSign(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Control Flow: Switch Case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day.");
  }
}

// Control Flow: Loops
void printNumbersWithLoops() {
  print("For Loop:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("While Loop:");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  print("Do-While Loop:");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
}

// Combining Data Types and Control Flow
void processList(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number");

    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    switch (number) {
      case 1 ... 10:
        print("$number is small.");
        break;
      case 11 ... 100:
        print("$number is medium.");
        break;
      default:
        print("$number is large.");
    }
  }
}

// Main Function
void main() {
  print("=== Define Variables ===");
  defineVariables();

  print("\n=== Type Conversion ===");
  String testString = "42";
  convertAndDisplay(testString);

  print("\n=== Control Flow: If-Else Statements ===");
  checkNumberSign(-5);
  checkVotingEligibility(20);

  print("\n=== Control Flow: Switch Case ===");
  printDayOfWeek(3);

  print("\n=== Control Flow: Loops ===");
  printNumbersWithLoops();

  print("\n=== Combining Data Types and Control Flow ===");
  List<int> numbers = [3, 12, 105];
  processList(numbers);
}
