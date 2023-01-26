require_relative './enumerable_project'

## myclass class will go through here

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = *list
  end

  def each(&block)
    @list.each(&block) if block_given?
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter?(&:even?)
