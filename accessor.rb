class BankAccount
	attr_accessor :balance
	def initialize(bal)
		@balance = bal
	end
end


class Interest < BankAccount
	def initialize(owner, rate)
		@owner = owner
		@rate  = rate
	end
end

p = BankAccount.new("Hello Nitanshu whats up")

p.balance=(234)
p.balance


j = Interest.new(3, 120)
puts(j.balance)
puts(p.balance)