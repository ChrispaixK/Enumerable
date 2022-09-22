require_relative 'my_enumerable'

# Define a class to hold a list of items
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

puts

p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

puts

p(list.filter(&:even?))
