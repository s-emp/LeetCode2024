// https://leetcode.com/problems/insert-delete-getrandom-o1/?envType=study-plan-v2&envId=top-interview-150

class RandomizedSet {

    private var set = Set<Int>()
    
    init() { }
    
    func insert(_ val: Int) -> Bool {
        set.insert(val).inserted
    }
    
    func remove(_ val: Int) -> Bool {
        set.remove(val) == nil ? false : true
    }
    
    func getRandom() -> Int {
        set.randomElement() ?? -1
    }
}
