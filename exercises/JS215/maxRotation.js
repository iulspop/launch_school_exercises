
/* Write a function that rotates an array by moving the first element to the end of the array. Do not modify the original array.
    If the input is not an array, return undefined.
    If the input is an empty array, return an empty array.
Review the test cases below, then implement the solution accordingly.
*/

console.log(rotateArray([7, 3, 5, 2, 9, 1]));       // [3, 5, 2, 9, 1, 7]
console.log(rotateArray(['a', 'b', 'c']));          // ["b", "c", "a"]
console.log(rotateArray(['a']));                    // ["a"]
console.log(rotateArray([1, 'a', 3, 'c']));         // ["a", 3, "c", 1]
console.log(rotateArray([{ a: 2 }, [1, 2], 3]));    // [[1, 2], 3, { a: 2 }]
console.log(rotateArray([]));                       // []

// return `undefined` if the argument is not an array
console.log(rotateArray());                         // undefined
console.log(rotateArray(1));                        // undefined

// the input array is not mutated
let array = [1, 2, 3, 4];
rotateArray(array);                    // [2, 3, 4, 1]
console.log(array);                    // [1, 2, 3, 4]

function rotateArray(array) {
	if (!Array.isArray(array)) return undefined;
	if (array.length === 0) return [];
	
	let newArray = array.slice();
  let firstElement = newArray.shift();

  return newArray.push(firstElement);
}

/*
    Input: array, not array, empty array
    Output: new array or undefined or empty array
    req: array input return new array with first element moved to last index
    if not an array, then return undefined
    if empty array, return empty array
    else
    model:
    if not an array, then return undefined
    elseif empty array, return empty array
    else
        init new array as a copy of input array
        select and delete first element 
        add it to the end of the new array.
*/


/*
Write a function that rotates the last count digits of a number. 
To perform the rotation, move the first of the digits that you want
to rotate to the end and shift the remaining digits to the left.
Examples:
*/

console.log(rotateRightmostDigits(735291, 1));      // 735291
console.log(rotateRightmostDigits(735291, 2));      // 735219
console.log(rotateRightmostDigits(735291, 3));      // 735912
console.log(rotateRightmostDigits(735291, 4));      // 732915
console.log(rotateRightmostDigits(735291, 5));      // 752913
console.log(rotateRightmostDigits(735291, 6));      // 352917

/*
  input: number (int), count (int)
  output: rotatedNumber (int)
  What is the rotation?
  grab digit N counting from LSD
  move to end
  input number transform into array of digits
  take digit at index of array of digits(length - count)
  place at the end of the array of digits
  join array into string
  turn string into number
  return number
*/

function rotateRightmostDigits(number, count) {
  if (!Array.isArray(number)) digits = convertNumberToArrayOfDigits(number)
  let digit = digits.splice(digits.length - count, 1)[0]
  digits.push(digit)
  return digits
}

function convertNumberToArrayOfDigits(number) {
  return number.toString().split("").map(digit => Number(digit))
}

/* 
Take the number 735291 and rotate it by one digit to the left, getting 352917.
Next, keep the first digit fixed in place and rotate the remaining digits to get 329175. 
Keep the first two digits fixed in place and rotate again to get 321759. 
Keep the first three digits fixed in place and rotate again to get 321597. 
Finally, keep the first four digits fixed in place and rotate the final two digits to get 321579. 
The resulting number is called the maximum rotation of the original number.
Write a function that takes an integer as an argument, and returns the maximum rotation of that integer.
You can (and probably should) use the rotateRightmostDigits function from the previous exercise.
Examples:
*/

console.log(maxRotation(735291));          // 321579
console.log(maxRotation(3));               // 3
console.log(maxRotation(35));              // 53
console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
console.log(maxRotation(8703529146));      // 7321609845

/*
UNDERSTAND THE PROBLEM
Input: number (int)
Output: max rotated number (int)
What is a the maximum rotation of a number?
In the context of programming, rotation means either
rotating to the left: shifting to the left and pushing dropped digit from MSD to LSD
or
rotating to the right: shifting to the right and pushing dropped digit from LSD to MSD
this can be applied to any ordered set, such as the digits of a number or the elements of an array.
So what is the maximum rotation of an number?
it is rotating to the left repeatedly, 
with each rotation fixing an additional digit from the left, 
so the following rotation starts after the fixed digit,
repeat until all the digits are fixed.
what if leading number is zero?
drop it!
mental model (view on what the problem requires):
rotate number, fixing a digit each time from the left, repeat until all digits are fixed.
EXAMPLES / TEST CASES
Input: 523552
Output: 252355
Input: 0123456
Output: 1350426
Input: 735291
Output: 321579
Input: 3
Output: 3
Input: 35
Output: 53
Input: 105
Output: 15 -- the leading zero gets dropped
Input: 8703529146
Output: 7321609845
DATA STRUCTURE
bcs of repeating operations on order list of digits, we use array!
ALGORITHM
1. Transform the number into an array of digits
2. Rotate array of digits starting from the beginning of the array
3. Rotate array of digits again, but starting with one digit to the right,
   leaving the preceding digit fixed in position,
   Repeat until all digits have been rotated
4. If leading 0, drop it.
5. Transform array of digits into integer,
test algorithm
input: 735291
1. [7, 3, 5, 2, 9, 1]
2. [3, 5, 2, 9, 1, 7]
3. [3, 2, 1, 5, 7, 9]
4. [3, 2, 1, 5, 7, 9]
5. 321579
output: 321579
*/

function maxRotation(number) {
  digits = convertNumberToArrayOfDigits(number)
  for (let count = digits.length; count > 1; count--) {
    rotateRightmostDigits(digits, count)
  }
  return Number(digits.join(""))