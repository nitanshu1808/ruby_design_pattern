class Employee
	attr_reader :salary
	attr_accessor :name, :title

	def initialize(name, sal, title)
		@name 			= name
		@salary			= sal
		@title			= title
		@observers 	= []
	end

	def salary=(new_salary)
		@salary = new_salary
		notify_observer
	end

	def notify_observer
		@observers.each do |observer|
			observer.update(self)
		end
	end

	def add_observer(observer)
		@observers << observer
	end

	def delete_observer(observer)
		@observers.delete(observer)
	end
end


class Payroll
	def update(changed_employee)
		puts "Cut a new check for employee with name #{changed_employee.name} "
		puts "employee with salary #{changed_employee.salary} "
	end
end

class Tax
	def update(changed_employee)
		puts "Name of the employee  is #{changed_employee.name} and changed salary is #{changed_employee.salary}"
	end
end

p = Payroll.new
empy = Employee.new("Nitanshu", 9000, "Manager")
t = Tax.new
empy.add_observer(p)
empy.add_observer(t)
empy.salary = 35000

