# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.empty? ? 0 : arr.sort.last(2).reduce(:+)
end

def sum_to_n? arr, n
  arr.length < 2 ? false : (arr.combination(2).find{|x,y| x + y == n } ? true : false)
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
   /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  s =~ /^[01]*1[01]*00$/ || s == "0"
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    @isbn = isbn
    @price = price
    raise ArgumentError if(@isbn===""||@price<=0)
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
