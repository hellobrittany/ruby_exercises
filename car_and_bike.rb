module VehicleActions
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

class Car
  include VehicleActions 

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include VehicleActions 

  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new
bike = Bike.new


puts car.turn("east")
puts car.brake

puts bike.ring_bell
puts bike.brake

