require_relative './enumerable_project'

## myclass class will go through here

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = *list
  end

  def each
    for item in @list do
      yield item
    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter? { |e| e.even? }
