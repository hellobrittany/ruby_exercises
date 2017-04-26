# employee_1 = ["Jim", "Jefferies", 70000, true]
# employee_2 = ["Maria", "Bamford", 80000, true]

# #snakecase
# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_1[0]} #{employee_1 [1]} makes #{employee_1[2]} a year."
#only works with double ""
#interpolation

#benefits of arrays 
	#good for a lot of the similar information

# employee_1 = {first_name: "Jim", last_name:"Jefferies", salary: 70000, active: true}
# employee_2 = {first_name: "Maria", last_name: "Bamford", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."

#{} offer more flexibility, more human, less time, more efficient

class Employee
	attr_reader :first_name, :last_name, :salary, :active
	attr_writer :active

	def initialize(input_options)
		@first_name = input_options[:first_name]
		@last_name = input_options[:last_name]
		@salary = input_options[:salary]
		@active = input_options[:active]
	end

	def print_info
		puts "#{first_name} #{last_name} makes #{salary} a year"
	end

	def give_annual_raise
		@salary = @salary * 1.05
	end

	def active=(new_active)
		@active = new_active
	end
end

employee_1 = Employee.new(
													first_name: "Jim", 
													last_name: "Jefferies", 
													salary: 70000, 
													active: true)

employee_2 = Employee.new(
													first_name: "Maria", 
													last_name: "Banford", 
													salary: 80000, 
													active: true)

employee_1.print_info
employee_2.print_info
puts employee_1.active
employee_1.active = false
puts employee_1.active


#parameter = a slot
#argument = something you pass in



class Manager < Employee
	def initialize(input_options)
		super (input_options)
		@employees = input_options[:employees]
	end
		
	def send_report
		puts "Sending email..."
		#the code to send report
		puts "Email sent."
	end


end


manager = Manager.new(
											first_name: "Patton", 
											last_name: "Oswalt", 
											salary: 100000, 
											active: true, 
											employees: [employee_1, employee_2])

employee_1.print_info
employee_2.print_info
manager.print_info









