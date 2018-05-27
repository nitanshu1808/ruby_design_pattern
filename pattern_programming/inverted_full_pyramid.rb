class InvertedFullPyramid
  def self.print_pyramid
    (1..4).to_a.reverse.each_with_index do |item, index|
      for i in 0..index (print " ") end
      (1..(2*item - 1)).to_a.each{|val| print "*"}
      puts ""
    end
  end
end

InvertedFullPyramid.print_pyramid
