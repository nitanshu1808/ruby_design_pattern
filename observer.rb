# require 'observer'

module Subject

	def initialize
		@observers 	= []
	end

	def notify_observers
		@observers.each do |observer|
			observer.call(self)
		end
	end

	def add_observer(&observer)
		@observers << observer
	end

	def delete_observer(observer)
		@observers.delete(observer)
	end
end

class Employee
	include Subject
	# include Observable

	attr_reader :salary
	attr_accessor :name, :title

	def initialize(name, sal, title)
		super()
		@name 			= name
		@salary			= sal
		@title			= title
	end

	def salary=(new_salary)
		old_salary = @salary
		@salary = new_salary
		if (old_salary != new_salary)
			notify_observers
		end		
		# For Observable Pattern
		# changed
		# notify_observers(self)
	end
end


# class Payroll
# 	def update(changed_employee)
# 		puts "Cut a new check for employee with name #{changed_employee.name} "
# 		puts "employee with salary #{changed_employee.salary} "
# 	end
# end

# class Tax
# 	def update(changed_employee)
# 		puts "Name of the employee  is #{changed_employee.name} and changed salary is #{changed_employee.salary}"
# 	end
# end

empy = Employee.new("Nitanshu", 9000, "Manager")

# p = Payroll.new
# t = Tax.new

empy.add_observer do |changed_employee|
	puts "Cut a new check for employee with name #{changed_employee.name} "
	puts "employee with salary #{changed_employee.salary} "
end
empy.salary = 35000

