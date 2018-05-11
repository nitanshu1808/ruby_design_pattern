require 'uri'
yahoo = URI.parse('http://wwww.yahoo.com')
puts yahoo
thread1 = Thread.new do
	sum = 0
	1.upto(10){|x| sum = sum + x}
	puts "sum of 10 numbers is #{sum}"
end

thread2 = Thread.new do
	product = 1
	1.upto(10){|x| product = product * x}
	puts "product of 1st 10 numbers is #{product}"
end




monitor = Monitor.new

monitor.synchronize do
	thread1.join
	thread2.join
end