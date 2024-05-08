// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/?envType=study-plan-v2&envId=top-interview-150

final class BestTimeBuySellStock2 {
    func maxProfit(_ prices: [Int]) -> Int {
        let result = prices.reduce((profit: 0, buy: prices[0], currentProfit: 0)) { last, price in
            var currentProfit = last.currentProfit
            var profit = last.profit
            var buy = last.buy
            if price < currentProfit + buy {
                profit += currentProfit
                currentProfit = 0
                buy = price
            } else {
                currentProfit = price - buy
            }
            return (profit, buy, currentProfit)
        }
        return result.profit + result.currentProfit
    }
}
