// Challenge 1
// Write failing test cases for next two challenges

// Challenge 2
// Write a function that sorts the positive numbers in ascending order,
// and keeps the negative numbers untouched.
// Example: posNegSort([6, 3, -2, 5, -8, 2, -2]) ➞ [2, 3, -2, 5, -8, 6, -2]
posNegSort(List inputList) {
  List posNumList = [];
  // List indexList=[];
  for (int i = 0; i < inputList.length; i++) {
    if (inputList[i] > 0) {
      posNumList.add(inputList[i]);
      //  indexList.add(i);
    }
  }
  posNumList.sort();
  //print(posNumList);
  // print(inputList);
  for (int i = 0, j = 0; i < inputList.length; i++) {
    if (inputList[i] > 0) {
      inputList[i] = posNumList[j++];
    }
    //  print(inputList);

  }
  return inputList;
}
// Challenge 3
// The Karaca's Encryption Algorithm
// Make a function that encrypts a given input with these steps:
// Input: "apple"
// Step 1: Reverse the input: "elppa"
//
//  Step 2: Replace all vowels using the following chart:
// a => 0
// e => 1
// o => 2
// u => 3
//i=4
// "1lpp0"
// Step 3: Add "aca" to the end of the word: "1lpp0aca"
// Output: "1lpp0aca"

String encrypt(String inputString) {
  String reversedString;
  String resultString = '';
  if (inputString.isEmpty) {
    return 'aca';
  }
  for (int i = 0; i < inputString.length; i++) {
    reversedString = inputString.split('').reversed.join();
  }
  // print(reversedString);
  List reversedStringList = [];
  for (int i = 0; i < reversedString.length; i++) {
    reversedStringList
        .add(reversedString[i]); ////create list of reversed string characters
  }
  //print(reversedStringList);
  for (int i = 0; i < reversedString.length; i++) //replace vowels in the list
  {
    if (reversedString[i] == 'a') {
      reversedStringList[i] = '0';
    } else if (reversedString[i] == 'e') {
      reversedStringList[i] = '1';
    } else if (reversedString[i] == 'o') {
      reversedStringList[i] = '2';
    } else if (reversedString[i] == 'u') {
      reversedStringList[i] = '3';
    } else if (reversedString[i] == 'i') {
      reversedStringList[i] = '4';
    }
  }

  for (int i = 0; i < reversedStringList.length; i++) //convert list to string
  {
    resultString = resultString + reversedStringList[i];
  }

  return resultString + "aca";
}

main() {
  print(posNegSort([6, 3, -2, 5, -8, 2, -2]));
  print(encrypt("apple"));
}
