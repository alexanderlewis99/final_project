class Mathy
	# attr accessor @equation
	# create initialize method accept the equation as an argument
	attr_accessor :answer
	def initialize(equation)
		@nEquation = equation 

	end
	#store value in @equation in initialize

	#solve_problem method
	#@equation string, and split it into an array.

	def calculate()

		array = @nEquation.split(/(\d+)/)

		array.delete_at(0)

		size = array.size
		a = 0
		b = 1
		c = 0

		num1 = 0.0
		num2 = 0.0


		num1 = array[0].to_i
		num2 = array[2].to_i

		size = array.count

		while c < size do
			if array[c] == "*"
				num1 = num1*num2

			elsif array[c] == "/"
				num1 = num1/num2

			elsif array[c] == "+"
				num1 = num1+num2

			elsif array[c] == "-"
				num1 = num1-num2

			else
				num2 = array[c+2].to_i
			end
			c+=1
		end

		@answer = num1

	end	

end