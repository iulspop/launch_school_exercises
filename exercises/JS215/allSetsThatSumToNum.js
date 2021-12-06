
/*
https://www.codewars.com/kata/555b1890a75b930e63000023/train/python

Input: integer 30 > n > 0
Output: collection of all possible collections of integers that sum to N
        array of arrays of integers

Explicit requirements:
- Don't need to sort subarrays
- Order of subarrays irrelevant
- n = 10 should be complete within ~6000ms

Implicit requirements:
- always integer less than 30 or greather than 0
- order of subdivision/combo doesn't make a different combination
  10
  [4, 6]
  [6, 4]

Mental Model:
n = 10
[10] => 10
[10 - 1] => [9, 1] => 10
[10 - 2] => [8, 2] => 10
...
10 - 1

n = X
n - 0
...
n - (n - 1)

n = 10
[[10],[9, 1], [8, 2]...]

iterate
[9 , 1]
[8, 1, 1]

[10]
10 - 1
...
10 - 9

[...]

[...]

[...]

? [1, 1, 1, 1, 1, 1, 1, 1]

combinations = []
n = X
- subdivide (n)
    iterate from 1 to (n - 1)  |i|
     each add combo [n - i, i]
  ...
  
  returns [combinations]
  
n = 8

- add [n] to combos
- subdivde n
  iterate from 1 
  [7, 1]
  [6, 1, 1]
  [5, 1, 1, 1]
  
  [6, 2]
  [4, 2, 2]
  
-

n subdivide [7, 2]


Data
Set = [[1, 2]]

Algo
n = 5
1. subdivide(n)
   1. iterate from (n - 1) to (n - floor(n / 2)) |i| 4, 3, 2
      1. [i, n - i]



*/

function combos(n) {
   
}

combos(1) // === [[1]]
combos(2) // === [[1,1],[2]]
combos(3) // === [[1,1,1],[1,2],[3]]
combos(4) // === [[1,1,1,1],[1,1,2],[1,3],[2,2],[4]]
combos(10) // === [ [ 10 ],
                //  [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
                //  [ 1, 1, 1, 1, 1, 1, 1, 1, 2 ],
                //  [ 1, 1, 1, 1, 1, 1, 1, 3 ],
                //  [ 1, 1, 1, 1, 1, 1, 4 ],
                //  [ 1, 1, 1, 1, 1, 5 ],
                //  [ 1, 1, 1, 1, 6 ],
                //  [ 1, 1, 1, 7 ],
                //  [ 1, 1, 8 ],
                //  [ 1, 9 ],
                //  [ 1, 1, 1, 1, 1, 1, 2, 2 ],
                //  [ 1, 1, 1, 1, 1, 2, 3 ],
                //  [ 1, 1, 1, 1, 2, 4 ],
                //  [ 1, 1, 1, 1, 2, 2, 2 ],
                //  [ 1, 1, 1, 1, 3, 3 ],
                //  [ 1, 1, 1, 2, 5 ],
                //  [ 1, 1, 1, 2, 2, 3 ],
                //  [ 1, 1, 1, 3, 4 ],
                //  [ 1, 1, 2, 6 ],
                //  [ 1, 1, 2, 2, 4 ],
                //  [ 1, 1, 2, 2, 2, 2 ],
                //  [ 1, 1, 2, 3, 3 ],
                //  [ 1, 1, 3, 5 ],
                //  [ 1, 1, 4, 4 ],
                //  [ 1, 2, 7 ],
                //  [ 1, 2, 2, 5 ],
                //  [ 1, 2, 2, 2, 3 ],
                //  [ 1, 2, 3, 4 ],
                //  [ 1, 3, 6 ],
                //  [ 1, 3, 3, 3 ],
                //  [ 1, 4, 5 ],
                //  [ 2, 8 ],
                //  [ 2, 2, 6 ],
                //  [ 2, 2, 2, 4 ],
                //  [ 2, 2, 2, 2, 2 ],
                //  [ 2, 2, 3, 3 ],
                //  [ 2, 3, 5 ],
                //  [ 2, 4, 4 ],
                //  [ 3, 7 ],
                //  [ 3, 3, 4 ],
                //  [ 4, 6 ],
                //  [ 5, 5 ] ]