# This program shows how we method look up works in ruby
# whenever a call is made to a method from a object, it first looks up in the class it originated from, if the method is not
# found it checks the method in the modules from the last to first (if included). Thus, if a method is not found it goes to the
# Object class calling a no method error

module SayHi
	def say_hello
		puts "Hello World"
	end
end


module SayHelo
	def say_hello
		begin
			1/0
		rescue Exception => e
			raise e.message
		end
		puts "Hello NIK"
	end
end


class Hello
	include SayHi
	include SayHelo
end

p = Hello.new

p.say_hello;