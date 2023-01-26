module Enumerable
  def all?
    output = []
    puts "\n ---------------------------- \n"
    print "METHOD ALL?\n"
    print "Data reviced:           #{list}\n"
    list.each { |number| output.push(number) if yield number }
    puts "Output data:            #{output}"
    puts "Result:                 #{output.length == list.length}"
    puts " ---------------------------- \n\n"
  end

  def any?
    output = []
    puts "\n ---------------------------- \n"
    print "METHOD ANY?\n"
    print "Data reviced:           #{list}\n"
    list.each { |number| output.push(number) if yield number }
    puts "Output data:            #{output}"
    puts "Result:                 #{!output.empty?}"
    puts " ---------------------------- \n\n"
  end

  def filter?
    output = []
    puts "\n ---------------------------- \n"
    print "METHOD FILTER?\n"
    print "Data reviced:           #{list}\n"
    list.each { |number| output.push(number) if yield number }
    puts "Output data:            #{output}"
    puts " ---------------------------- \n\n"
  end
end
