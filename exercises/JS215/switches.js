/*
First time in JS took: 42 min 36s

You have a bank of switches before you, numbered from 1 to n. Every switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You walk back to the beginning of the row and start another pass. On this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back to the beginning again, this time toggling switches 3, 6, 9, and so on. You continue to repeat this process until you have gone through n repetitions.

Write a program that takes one argument—the total number of switches—and returns an array of the lights that are on after n repetitions.

Examples:

function lightsOn(switches) {
  // ...
}

lightsOn(5);        // [1, 4]
1, 2, 3, 4, 5
O, O, O, O, O
I, I, I, I, I
I, O, I, O, I 
I, O, O, O, I 
I, O, O, I, I 
I, O, O, I, O


// Detailed result of each round for `5` lights
// Round 1: all lights are on
// Round 2: lights 2 and 4 are now off;     1, 3, and 5 are on
// Round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
// Round 4: lights 2 and 3 are now off;     1, 4, and 5 are on
// Round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

lightsOn(100);      // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

*/

/*
Input: number switches
Output: array of lights that are on.

Requirements:
  Implicit:
  - position of lights that are on, counting from 1
  - iterating from 1 to n, toggle switches that are at position that is a multiple of X
  
[true, ...n ]

iterate 2 ... n
  toggle switches that are multiples of i
  
map over with position of light


Data Structures:
[booleans...]

Algo:
input: n

1. Create an array of n 'true' values
2. iterate from 2 to n => round
   1. map over the array with index
      1. check if index + 1 (position of the light) is evenly divible by round number
         - if true, toggle value
         - if false, return value unchange
3. map array of booleans
   1. check if element is true => replace with index + 1
   2. if false, return element
4. select only numbers
5. return the final array of numbers


onLights = []

positions 1 to n
  toggle count = 0
  rounds 2 to n
    is position evenly divisble by round?
      increment toggle count
  if toggle count is even then add position to on lights

return onLights


if light is toggled uneven number of times
  1, 3 => false
  
even number of times
  2, 4 => true



*/

function lightsOn(numberOfSwitches) {
  let lights = array(numberOfSwitches, true)
  
  for (let round = 2; round <= numberOfSwitches; round++) {
    lights = lights.map((light, index) => ((index + 1) % round === 0) ? !light : light)
  }
  
  lights = lights.map((light, index) => light ? (index + 1) : light)
                 .filter(light => light)

  return lights
}

function* arrayGenerator(n, value) {
  for (let i = 1; i <= n; i++) {
    yield value
  }
}

const array = (n, value) => [...arrayGenerator(n, value)]

console.log(lightsOn(5));        // [1, 4]
console.log(lightsOn(100)); // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
