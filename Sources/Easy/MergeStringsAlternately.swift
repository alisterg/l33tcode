/// You are given two strings word1 and word2. Merge the strings by adding
/// letters in alternating order, starting with word1. If a string is longer than
/// the other, append the additional letters onto the end of the merged string. 
///
/// Constraints:
///     1 <= word1.length, word2.length <= 100
///     word1 and word2 consist of lowercase English letters.
func mergeStringsAlternately(_ word1: String, _ word2: String) -> String {
    var longerWord: String

    let shorterLength = word1.count < word2.count
        ? word1.count
        : word2.count
    
    if word1.count < word2.count {
        longerWord = word2
    } else {
        longerWord = word1
    }

    var result = ""

    for i in 0...shorterLength - 1 {
        let char1 = charAtIndex(input: word1, index: i)
        let char2 = charAtIndex(input: word2, index: i)
        result.append(char1)
        result.append(char2)
    }

    if shorterLength == longerWord.count {
        return result
    }

    for i in shorterLength...longerWord.count - 1 {
        result.append(charAtIndex(input: longerWord, index: i))
    }

    return result
}

func charAtIndex(input: String, index: Int) -> Character {
    return input[input.index(input.startIndex, offsetBy: index)]
}