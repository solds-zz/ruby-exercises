def valid_numbers?(*nums)
  valid_nums = nums.select { |n| n == 0 }
  valid_nums.empty?
end

def opposites?(num1, num2)
  (num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0)
end

loop do
  nums = []
  2.times do |n|
    print "Please enter a positive or negative integer: "
    nums << gets.chomp.to_i
  end
  puts
  if valid_numbers?(*nums)
    if opposites?(*nums)
      puts "#{nums[0]} + #{nums[1]} = #{nums[0] + nums[1]}"
      break
    else
      puts "Sorry. One integer must be positive, one must be negative."
    end
  else
    puts "Invalid input. Only non-zero integers are allowed."
  end
  puts "Please start over."
  puts
end
