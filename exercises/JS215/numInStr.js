// Create a function that takes an array of strings and returns an array with only the strings that have numbers in them. If there are no strings containing numbers, return an empty array.

/*
input: Array of strings
output: Filtered array of strings including numerical characters.

Requirements:
  Explicit:
  - Only strings with numbers characters 0 to 9 are included in final array
  - If no strings match, return empty array
  
  Implicit:
  - Return new array

iterate through the array
check if a number character is included in the string
if the string passes the check, add to the new array.

Algorithm:
1. Filter the array
   1. callback that tests the string using a regex
2. Return the array

*/

const numInStr = strings => strings.filter(string => /[0-9]/.test(string))

console.log(numInStr(["1a", "a", "2b", "b"])); // ["1a", "2b"]
console.log(numInStr(["abc", "abc10"])); // ["abc10"]
console.log(numInStr(["abc", "ab10c", "a10bc", "bcd"])); // ["ab10c", "a10bc"]
console.log(numInStr(["this is a test", "test1"])); // ["test1"]

console.log(numInStr(["this is a test", "test"])); // []