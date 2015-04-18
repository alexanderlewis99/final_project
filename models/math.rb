class Math
	#attr accessor @equation
	#create initialize method accept the equation as an argument
	#store value in @equation in initialize

	#solve_problem method
	#@equation string, and split it into an array.

end

Math.new(params[:Equation])

array = "4*4".split #split method
["4", "*", "4"]


num1 = array[0];

num2 = array[2];

i = 0;

if array[i] = "*"
	num1 = num1*num2
end

if array[i] = "/"
	num1 = num1/num2
end

if array[i] = "+"
	num1 = num1+num2
end

if array[i] = "-"
	num1 = num1-num2
end