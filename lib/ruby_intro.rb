# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end    
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? or arr.length == 1
    return false
  else
    arr.combination(2).to_a.each {|a|  
      if a[0] + a[1] == n
        return true
      end
    }
      return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWYZ]/.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  num = s.to_i(2)
  if num%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize (isbn, price)
    if isbn.empty?
      raise ArgumentError.new('isbn Argument is empty')
    end
    if price.to_f <= 0
      raise ArgumentError.new('the price is less than or equal to zero')
    end
    @isbn = isbn
    @price = price
    
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string 
    "$%.2f" % [@price.to_f.round(2)]
  end
  
end
