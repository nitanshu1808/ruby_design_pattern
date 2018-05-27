#Program to print inverted pyramid
class InvertedPyrnamid
  def self.print_pyramid
    for i in (0..4).to_a.reverse 
      (0..i).each {print "* "}
      puts ""
    end
  end
end

InvertedPyrnamid.print_pyramid
puts ""
puts "program to print inverted using numbers"

#program to print inverted using numbers
class InvertedPyramidUsingNumber
  def self.print_pyramid
    for i in (1..4).to_a.reverse
      (1..i).each {|val| print " #{val}"}
      puts ""
    end
  end
end

InvertedPyramidUsingNumber.print_pyramid
