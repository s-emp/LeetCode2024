// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/?envType=study-plan-v2&envId=top-interview-150

final class BestTimeBuySellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        prices.reduce((profit: 0, buy: prices[0])) { last, price in
            (max(last.profit, price - last.buy), min(last.buy, price))
        }.profit
    }
}
