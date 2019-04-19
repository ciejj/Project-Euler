module FibonacciNumber
  def self.first_number_with_digits(limit)
    # array holding 3 Fibonacci numbers
    fib_arr = [1, 1, 0]

    counter = 2
    i = 2

    while fib_arr[(i - 1) % 3] <= 10**(limit - 1)

      fib_arr[i] = fib_arr[(i + 1) % 3] + fib_arr[(i + 2) % 3]
      counter += 1
      i = (i + 1) % 3
    end
    counter
  end
end
