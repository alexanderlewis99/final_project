class Mathy
	# attr accessor @equation
	# create initialize method accept the equation as an argument

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
		c = 0

		num1 = 0.0
		num2 = 0.0

		


		while size > a do
			tester = 0
			if array[a] != "*"  and array[b] != "*"
				tester+=1
			elsif array[a] != "/" and array[b] != "/"
				tester+=1
			elsif array[a] != "+" and array[b] != "+"
				tester+=1
			elsif array[a] != "-" and array[b] != "-"
				tester+=1
			elsif tester < 4
				array[a] = array[a] + array[b]
				array.delete_at(b)
			else
				tester = 0
			end
			a+=1
			b+=1
		end

		array.each do |item|
			if item.match(/\d/)
				item = item.to_i
			end
		end



		num1 = array[0].to_f
		num2 = array[2].to_f

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
				num2 = array[i+2]
			end
			c+=1
		end

		@answer = num1
		puts @answer

	end	

end