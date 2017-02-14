def reverse_digits(number)
  is_negative = number < 0
  result      = 0
  remaining   = number.abs

  while (remaining != 0)
    result = result * 10 + remaining % 10
    remaining /= 10
  end

  is_negative ? -result : result
end

puts reverse_digits(ARGV[0].to_i)