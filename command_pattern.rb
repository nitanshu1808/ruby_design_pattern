class SlickButton
	attr_accessor :command

	def initialize(command)
		@command = command
	end

	def execute_command
		@command.execute if @command
	end

end

class ClickButton < SlickButton
	def execute
		puts "HELLO I AM CLICKED #{self}"
	end
end


class NetworkButton < SlickButton
	def execute
		puts "HELLO I AM CLICKED #{self}"
	end
end