class Bag

	def self.create_method(n)
		define_method("bag_size_#{n}") do |val|
			puts val * 2
		end
	end

	10.times{|i| create_method(i)} 

end


b = Bag.new
b.bag_size_1(4)
