class EvenFibonacciNumbers
  def self.brute_force(limit)
    fib1 = 1
    fib2 = 1
    sum = 0

    while fib1 < limit
      sum += fib1 if (fib1 % 2).zero?
      temp = fib2
      fib2 = fib1
      fib1 += temp
    end
    sum
  end

  # adds every third element from the Fibonacci sequence
  def self.every_third(limit)
    sum = 0
    a = 1
    b = 1
    c = a + b

    while c < limit
      sum += c
      a = b + c
      b = c + a
      c = a + b
    end
    sum
  end
end
