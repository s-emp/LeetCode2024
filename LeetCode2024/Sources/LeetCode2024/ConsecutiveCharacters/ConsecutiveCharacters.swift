final class ConsecutiveCharacters {
    func maxPower(_ s: String) -> Int {
        var result = 0
        var currentCounter = 0
        var currentCharacter: Character?
        for new in s {
            if new == currentCharacter {
                currentCounter += 1
            } else {
                result = max(result, currentCounter)
                currentCounter = 1
                currentCharacter = new
            }
        }
        return max(result, currentCounter)
    }
}
