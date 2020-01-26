# When done, submit this entire file to the autograder.

# Part 1

def sum(arr=[])
  total = 0
  arr.each { |number|
    total += number
  }
  return total
end

def array_min(arr)
  min = arr[0]
  arr.each do |num|
    if num < min
      min = num
    end
  end
  return min
end

def max_2_sum(arr=[])
  # Check for one or no elements (edge cases)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  # Identify minimum element
  min = array_min(arr)

  greatest = min
  secondGreatest = min
  arr.each do |num|
    if num > greatest
      greatest = num
    elsif num > secondGreatest
      secondGreatest = num
    end
  end
  return greatest + secondGreatest
end

def sum_to_n?(arr = [], n)
  if arr.length == 0
    return false
  end

  numbers = Hash.new
  arr.each do |num|
    if numbers.has_key? (n - num)
      return true
    end
    numbers[num] = 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  if s.length == 0
    return false
  end
  return %w[b c d f h j k l m n p q r s t v w x y z].any? { |letter| letter == s[0].downcase }
end

def binary_multiple_of_4?(s)
  if s.length() == 0
    return false
  elsif !(s !~ /[^01]/)
    return false
  # Divisible by four if the last two digits are 0
  elsif s[s.length - 2] == "0" && s[s.length - 1] == "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn.length == 0)
      raise ArgumentError
    elsif (price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$%.2f" % [price]
  end
end
