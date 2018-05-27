require 'etc'
class BankAccount
	attr_reader :balance

	def initialize(starting_balance = 0)
		@balance = starting_balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end
end

class BankAccountProxy
	def initialize(real_object)
		@real_object = real_object
	end

	def method_missing(name, *args)
		puts "Delegating #{name} message to subject."
		@real_object.send(name, *args)
	end
end

account = BankAccount.new(100)
account.deposit(200)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(30)
