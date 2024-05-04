final class FibonacciNumber {
    func fib(_ n: Int) -> Int {
        var sequence = [0, 1]
        guard n > 1 else { return sequence[n] }
        for i in 2..<n {
            sequence.append(sequence[i - 1] + sequence[i - 2])
        }
        return sequence[n - 1] + sequence[n - 2]
    }
}
