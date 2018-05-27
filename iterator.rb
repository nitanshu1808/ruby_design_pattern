class ArrayIterator
	def initialize(array)
		@array = array
		@index = 0
	end

	def has_next?
		@index < @array.length
	end

	def item
		@array[@index]
	end

	def next_item
		value = item
		@index += 1
		value
	end
end

p = ['nik', 'palak', 'sunny', 'bunny']

arr = ArrayIterator.new(p)

while arr.has_next?
	puts "Element is #{arr.next_item}"
end

sts = ArrayIterator.new('adsf')
while sts.has_next?
	puts "Element is #{sts.next_item}"
end
