/*

Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
snail(array) #=> [1,2,3,6,9,8,7,4,5]
For better understanding, please follow the numbers of the next array consecutively:

array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
snail(array) #=> [1,2,3,4,5,6,7,8,9]
This image will illustrate things more clearly:


NOTE: The idea is not sort the elements from the lowest value to the highest; the idea is to traverse the 2-d array in a clockwise snailshell pattern.

NOTE 2: The 0x0 (empty matrix) is represented as en empty array inside an array [[]]. => []


INPUT: 2d array (n x n)
OUTPUT: 1d array (all the numbers in the 2d array in specific order)

RULES:
 - begin from the top left ([0][0])
 - move clockwise around the matrix
 - elements can be anything
 - valid inputs only ([[]], n x n array)

DATA: array

ALGORITHM:

Traversal:
 - Indexes: (x, y)
 - Initialize: minX = 0, minY = 0, maxX = n-1, maxY = n-1
 - Begin at minX, minY (top left)
 - Increment the y index up to maxY
 - Increment minX (track that the minimum x)
 
 - Increment the x index up to maxX
 - Decrement maxY
 
 - Decrement the y index down to minY
 - Decrement maxX
 
 - Decrement the x index down to minX
 - Increment minY
 
Finished?
 - minX > maxX || minY > maxY

FORMAL:
 - Initialize:
   * n = array.length - 1
   * result = []
   * minX = 0
   * minY = 0
   * maxX = n-1
   * maxY = n-1
 - Iterate (infinite loop):
   * if finished, then break
   * FOR idxY from minY to maxY
     - push array[minX][idxY] onto result
   * Increment minX
   
   * if finished, break
   * FOR idxX from minX to maxX
     - push array[idxX][maxY]
   * Decrement maxY
   
   * if finished, break
   * FOR idxY from maxY to minY
   * - push array[maxX][idxY] onto result
   * Decrement maxX
   
   * if finished, break
   * FOR idxX from maxX to minX
     - push array[idxX][minY]
   * Increment minY
*/

function finished(minX, minY, maxX, maxY) {
  return minX > maxX || minY > maxY;
}

function snail(matrix) {
  let n = matrix.length;
  let result = [];
  let minX = 0;
  let minY = 0;
  let maxX = n - 1;
  let maxY = n - 1;
  
  while (true) {
    if (finished(minX, minY, maxX, maxY)) {
      break;
    }
     
    for (let idxY = minY; idxY <= maxY; idxY++) {
      result.push(matrix[minX][idxY]);
    }
    minX++;
    
    if (finished(minX, minY, maxX, maxY)) {
      break;
    }
     
    for (let idxX = minX; idxX <= maxX; idxX++) {
      result.push(matrix[idxX][maxY]);
    }
    maxY--;
    
    if (finished(minX, minY, maxX, maxY)) {
      break;
    }
    
    for (let idxY = maxY; idxY >= minY; idxY--) {
      result.push(matrix[maxX][idxY]);
    }
    maxX--;
    
    if (finished(minX, minY, maxX, maxY)) {
      break;
    }
    
    for (let idxX = maxX; idxX >= minX; idxX--) {
      result.push(matrix[idxX][minY]);
    }
    minY++;
  }
  
  return result;
}

/*
array = [[]];
minX=0
minY=0
maxX=-1
maxY=-1

array = [[1]];
minX=1,
minY=0,
maxX=0,
maxY=0

array = [[1, 2, 3, 4],
         [5, 6, 7, 8],
         [9,10,11,12],
        [13,14,15,16]]
        
minY = 1,
minX = 2,
maxY = 1,
maxX = 1

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
minY = 1, minX = 2, maxY=1, maxX=1

[(0,0), (0,1), (0,2), (1,2), (2,2), (2,1), (2,0), (1,0), (1,1)]

arrray = [[1,2],
          [3,4]]
[(0,0), (0,1), (1,1), (1,0)]
minY = 0, minX = 1, maxY=0, maxX=0
*/




console.log(snail([[]])); // []
console.log(snail([[1]])); // [1]
console.log(snail([[1, 2], [3, 4]]));  // [1, 2, 4, 3]
console.log(snail([[1, 2, 3], [4, 5, 6], [7, 8, 9]])); // [1, 2, 3, 6, 9, 8, 7, 4, 5]
console.log(snail([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]));
// [1, 2, 3, 4, 5, 10, 15, 20, 25, 24, 23, 22, 21, 16, 11, 6, 7, 8, 9, 14, 19, 18, 17, 12, 13]
