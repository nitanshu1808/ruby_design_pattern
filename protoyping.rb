animal = "cat"

def animal.animal_speak
	puts "MEOW"
end


def animal.greet(greet)
	@hello = greet
end

def animal.get_greet
	puts @hello
end

animal.animal_speak
animal.greet("Hllo no")
other = animal.clone
other.animal_speak

other.get_greet
