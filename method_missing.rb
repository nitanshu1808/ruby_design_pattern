class Demo
	def hello
		puts "Hello World"
	end

	def method_missing(name, *args)
		puts("Warning, Warning Unknown method #{name} called")
		puts("Arguements: #{args.join(' ')}")
	end
end


b = Demo.new
b.kabiring("hello", 123, 456)
b.send(:hello)