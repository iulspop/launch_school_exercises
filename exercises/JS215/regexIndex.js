function reverseStringWithPunctuationInPlace(strings) {
  return strings.map(string => {
    if (string.length === 0) { return '' }

    let reversedString = string.match(/[a-z0-9]/ig).reverse()
    let punctuationChars = matchAllWithIndex(string, /[^a-z0-9]/ig)

    punctuationChars.forEach(({match, index}) => reversedString.splice(index, 0, match))

    return reversedString.join('')
  })
}

function matchAllWithIndex(string, regex) {
  let matches = []
  let match
  while ((match = regex.exec(string)) !== null) {
    matches.push({match: match[0], index: match.index})
  }
  return matches
}

console.log(reverseStringWithPunctuationInPlace(["shan't"])) // === ["tnah's"]
console.log(reverseStringWithPunctuationInPlace(["y'all'rn't"])) //=== ["t'nrl'la'y"]
console.log(reverseStringWithPunctuationInPlace(["rabbit"])) // === (["tibbar"])
console.log(reverseStringWithPunctuationInPlace(["shan't", "won't", "y'all'rn't", "fixin'", "'eard", "why??", "peter", "rabbit"])); // returns ["tnah's", "tno'w", "t'nrl'la'y", "nixif'", "'drae", "yhw??", "retep", "tibbar"]);
console.log(reverseStringWithPunctuationInPlace([''])); // === ([''])