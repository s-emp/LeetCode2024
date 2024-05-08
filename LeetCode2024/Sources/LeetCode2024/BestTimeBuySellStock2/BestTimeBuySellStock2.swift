// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/?envType=study-plan-v2&envId=top-interview-150

final class BestTimeBuySellStock2 {
    func maxProfit(_ prices: [Int]) -> Int {
        var ans = 0
        for i in 1..<prices.count where prices[i] > prices[i - 1] {
            ans += prices[i] - prices[i - 1]
        }
        return ans
    }
}
