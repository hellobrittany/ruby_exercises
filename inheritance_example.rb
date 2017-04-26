class Vehicle
  attr_reader :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :speed, :weight, :brand
  
  def initialize(input_options)
    super()
    @speed = input_options[:speed]
    @weight = input_options[:weight]
    @brand = input_options[:brand]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "gas", 
              make: "Ford",
              model: "Taurus"
              )
bike = Bike.new(
                speed: 5,
                weight: "8lbs", 
                brand: "Huffy"
                )

# car.brake
# car.accelerate
# puts car.speed
# car.turn("west")
# puts car.direction
car.honk_horn

# bike.brake
# bike.accelerate
# puts bike.speed
# bike.turn("east")
# puts bike.direction
bike.ring_bell

puts "----------"

puts car.make
puts car.model
puts car.fuel
p car.speed

puts bike.speed
puts bike.weight
puts bike.brand

              