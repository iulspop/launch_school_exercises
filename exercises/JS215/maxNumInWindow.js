/*
The sliding window is a technique used to simplify complex data problems. A window that slides over the data to examine different sections of it.

Your challenge is to create a sliding window that traverses the array and returns the maximum value in each window.

Arguments
Array: The array over which you are traversing.
windowLength: The length of the window you will be using to do the search.

Returns Array: A new array containing the maximums for each window.
You are given this array and a window length of 2.

[4, 5, 6, 7, 8, 9]

Our function would start by examining the first two elements of the array and pushes the max value to a new array.

[**4, 5,** 6, 7, 8, 9]

... then the window slides to examine the next two, in this case 5 and 6, and pushes the max value to the array.

[4, **5, 6**, 7, 8, 9]

The window will examine the entire length of the array until the maximums for each window have been added to the new array.


================================

Input: array, length of window
Output: array of maximum

Requirement:
 - maximum is the maximum value in a window
 - If the size of window is larger the length of the array or if array is empty, return []
 

Iterate from 0 up until
  there are less elements left in the next iteration than the size of the window
  
  length - window => index    3


4 - 3 => 1

9 - 3 => 

Algorithm:
input: numbers
1. init empty array 'maximums'
2. Iterate from 0 to numbers.length - windowSize => startIndex
   1. Grab slice from startIndex to stratIndex + window size
   2. Get the maximum from the slice and push it to maximums array
3. Return maximums

*/

function windowMaxes(numbers, windowSize) {
  if (!numbers.every(number => number >= 0)) { return [] };
  if (!windowSize >= 0) { return [] };
  
  let maximums = [];
  for (let startIndex = 0; startIndex <= numbers.length - windowSize; startIndex++) {
    let window = numbers.slice(startIndex, startIndex + windowSize);
    maximums.push(Math.max(...window));
  }
  return maximums;
}

console.log(windowMaxes([1, 2, 3, 4, 3, 2, 1, 2, 5], 3)); // [3, 4, 4, 4, 3, 2, 5]
console.log(windowMaxes([1, 2, 3, 4], 3)); // [3, 4]
console.log(windowMaxes([1, 2, 3, 4], 4)); // [4]
console.log(windowMaxes([1, 2, 3, 4], 5)); // []
console.log(windowMaxes([], 2)); // []
[1, 2, 3, 4], -3
[null, null, function() {}, null, 3], 4 
[{'a': 2}, 8, 3, 0], 2
[-5, -2, 0, -5, 'hi', 1], 3 
