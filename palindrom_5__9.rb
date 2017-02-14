def number_of_digits(number)
  Math.log10(number).floor + 1
end

def palindrome?(number)
  return false if number < 0
  return true if number == 0

  number_of_digits = number_of_digits(number)
  msd_mask         = 10 ** (number_of_digits - 1)

  (0...(number_of_digits / 2)).each do
    return false if number % 10 != number / msd_mask

    number   %= msd_mask    # remove msd digit
    number   /= 10          # remove lsd digit
    msd_mask /= 100
  end

  true
end

puts palindrome?(ARGV[0].to_i)