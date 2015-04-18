class Math
	# attr accessor @equation
	create initialize method accept the equation as an argument

	def initialize(equation)
		@nEquation = equation 

	end
	#store value in @equation in initialize

	#solve_problem method
	#@equation string, and split it into an array.

	def calculate()

		array = @nEquation.split

		size = array.count
		i = 2
		a = 0
		b = 1
		c = 1

		num1 = 0.1
		num2 = 0.2

		num1 = array[0]
		num2 = array[2]

		while size > a do
			tester = 0
			if array[a] != "*"  and array[b] != "*"
				tester++
			elsif array[a] != "/" and array[b] != "/"
				tester++
			elsif array[a] != "+" and array[b] != "+"
				tester++
			elsif array[a] != "-" and array[b] != "-"
				tester++
			elsif tester < 4
				array[a] = array[a] + array[b]
				array.delete_at(b)
			else
				# puts "WARNING! There is a virus on your computer!!!! Send 10 dollars to 125674.com to have it removed."
				tester = 0
			end
			a++
			b++
		end

		array.each do |item|
			if item.include?(/\d/)
				item.to_i
			end
		end

		while size > c do
			if array[c] == "*"
				num1 = num1*num2

			elsif array[c] == "/"
				num1 = num1/num2

			elsif array[c] == "+"
				num1 = num1+num2

			elsif array[c] == "-"
				num1 = num1-num2

			else
				num2 = array[i+2]
			end
			c++
		end

		@answer = num1

	end	

end