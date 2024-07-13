// https://leetcode.com/problems/add-binary/description/

final class AddBinary {
    func addBinary(_ a: String, _ b: String) -> String {
        var aIterator = a.reversed().makeIterator()
        var bIterator = b.reversed().makeIterator()
        var result = ""
        var cach = 0
        while true {
            let aTmp = aIterator.next()
            let bTmp = bIterator.next()
            guard aTmp != nil || bTmp != nil || cach == 1 else { return String(result.reversed()) }
            let a = Int(String(aTmp ?? "0"))!
            let b = Int(String(bTmp ?? "0"))!
            
            let sum = a + b + cach
            
            cach = 0
            
            switch sum {
            case 0:
                result.append("0")
            case 1:
                result.append("1")
            case 2:
                cach = 1
                result.append("0")
            case 3:
                cach = 1
                result.append("1")
            default:
                fatalError()
            }
        }
    }
}
