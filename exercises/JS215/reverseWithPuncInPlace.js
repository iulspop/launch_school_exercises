
/* Given an array of strings in which each string may or may not contain punctuation, return a copy of the array in which the alphabetical characters are in reverse order, but the punctuation stays in the same place. 

test cases: 
"shan't" => "tnah's" 
"y'all'rn't" => "t'nrl'la'y"
"rabbit" -> "tibbar"

input: ["shan't", "y'all'rn't", "rabbit"]
output: ["tnah's", "t'nrl'la'y", "tibbar"]

*/

function reverseStringWithPunctuationInPlace(string) {

}

console.log(reverseStringWithPunctuationInPlace(["shan't"])) // === ["tnah's"]
console.log(reverseStringWithPunctuationInPlace(["y'all'rn't"])) // === ["t'nrl'la'y"]
console.log(reverseStringWithPunctuationInPlace(["rabbit"])) // === (["tibbar"])
console.log(reverseStringWithPunctuationInPlace(
  ["shan't", "won't", "y'all'rn't", "fixin'", "'eard", "why??", "peter", "rabbit"])
); // returns ["tnah's", "tno'w", "t'nrl'la'y", "nixif'", "'drae", "yhw??", "retep", "tibbar"]);
console.log(reverseStringWithPunctuationInPlace([''])); // === ([''])


/*
Input: Array of strings
Output: New array with new strings

Implicit Requirements:
  - Everything besides numbers and letters is punctuation
    - Punctuation: "single quote: ' . , ? " : ; _ " ...
  -

"y'all'rn.t" => "t'nrl'la.y"

yallrnt => tnrlay


Grab all the non-punctuation chars in order from the string

punctuation-char: '
index: 1

index: 5

punct: .
index 8



Data Structures:
array => iterate
  string
    array of characters
    array of objects:
      punctuationChar
      index     

Algorithm:
Input: Array of strings
1. Map over the array => string
   1. Match all non-punctuation characters => array of characters (excluding punctuation char)
   2. Reverse the array of characters
   3. Initalize an punctuationChars array
   4. Iterate over the string => char
      1. if char is punctuation, add an entry to punctuationChars
         add {char, index}
   5. Iterate over punctuationChars array => char
      1. splice it into array of characters
   6. Join array of characters and return that
2. return mapped over array

*/

function reverseStringWithPunctuationInPlace(strings) {
  return strings.map(string => {
    let characters = (string.match(/[a-z0-9]/ig) || []).reverse();
    
    let punctuationChars = [];
    [...string].forEach((char, index) => {
      if (/[^a-z0-9]/i.test(char)) { punctuationChars.push({char, index}) } 
    })
    
    punctuationChars.forEach(({char, index}) => characters.splice(index, 0, char));
    
    return characters.join('')
  })
}

// console.log(reverseStringWithPunctuationInPlace(["shan't"])) // === ["tnah's"]
// console.log(reverseStringWithPunctuationInPlace(["y'all'rn't"])) //=== ["t'nrl'la'y"]
// console.log(reverseStringWithPunctuationInPlace(["rabbit"])) // === (["tibbar"])

// console.log(reverseStringWithPunctuationInPlace(["shan't", "won't", "y'all'rn't", "fixin'", "'eard", "why??", "peter", "rabbit"])); // returns ["tnah's", "tno'w", "t'nrl'la'y", "nixif'", "'drae", "yhw??", "retep", "tibbar"]);
// console.log(reverseStringWithPunctuationInPlace([''])); // === ([''])