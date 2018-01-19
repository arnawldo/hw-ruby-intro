# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |n| sum += n}
  sum
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sum(arr.sort[-2..-1])
  end
end

def sum_to_n? arr, n
  start = 0
  stop = arr.length - 1
  while start < stop do
    for other_number in arr[start+1..stop]
      if other_number + arr[start] == n
        return true
      end
    end
    start += 1
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false unless s.is_a? String and s.length > 0 and s[0] =~ /[[:alpha:]]/
  !"aeiou".include? s[0].downcase
end

def binary_multiple_of_4? s
  return false if s =~ /[^10]/ or s.empty?
  s.to_i(10) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    # check validity of isbn and price
    raise ArgumentError unless isbn.is_a? String and !isbn.empty? and price > 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%0.2f" % @price
  end
end
