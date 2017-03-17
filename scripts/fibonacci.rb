#!/usr/bin/env ruby

# Returns the Fibonacci Sequence up to the specified amount

def fibonacci(num)
  fib_nums = []
  (0...num).each do |i|
    if i == 0 || i == 1
      fib_nums << 1
      next
    end
    fib_nums << fib_nums[i-2] + fib_nums[i-1]
  end
  return fib_nums
end

$stdout.puts fibonacci(ARGV[0].to_i)