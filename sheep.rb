class Sheep
	@@count = 0
	def initialize(input_options)
		@name = input_options[:name]
		@@count += 1
	end
	def bleet
		puts "baaaahhh"
	end

	def self.grass
		puts "Yum"
	end

	def name
		puts @name
	end

	def self.count
		puts @@count
	end
end

bob = Sheep.new(name: "Bob")
sue = Sheep.new(name: "Sue")

bob.bleet
Sheep.grass
bob.name 

sue.name


Sheep.count

