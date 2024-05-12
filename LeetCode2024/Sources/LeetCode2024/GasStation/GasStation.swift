// https://leetcode.com/problems/gas-station/description/?envType=study-plan-v2&envId=top-interview-150

final class GasStation {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        
        var lastGas = 0
        var currentGas = 0
        var indexGas = -1
        for i in 0..<gas.count {
            let nGas = gas[i]
            let nCost = cost[i]
            let result = currentGas - nCost + nGas
            if result < 0 {
                lastGas += result
                currentGas = 0
                indexGas = -1
            } else {
                currentGas = result
                if indexGas == -1 { indexGas = i }
            }
        }
        return lastGas + currentGas >= 0 ? indexGas : -1
    }
}
