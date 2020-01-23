# When done, submit this entire file to the autograder.

# Part 1

def sum(arr=[])
  total = 0
  arr.each { |number|
    total += number
  }
  return total
end

def max_2_sum(arr=[])
  # Check for one or no elements (edge cases)
  if arr[0] == nil && arr[1] == nil
    return 0
  elsif arr[0] != nil && arr[1] == nil
    return arr[0]
  end

  # Identify minimum element
  min = arr[0]
  arr.each do |num|
    if num < min
      min = num
    end
  end

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

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
