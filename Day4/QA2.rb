class Calculator
	puts "Enter the value 1: "
	@@num1= gets.chomp
	puts "Enter the value 2: "
	@@num2 = gets.chomp
	
	def sum
	 @var=Proc.new{
	   	|num1,num2|
	   	sum = num1.to_i + num2.to_i
	   	puts "Sum of #{num1} & #{num2} is : #{sum}"
	 }
	 @var[@@num1,@@num2]
	end
	
	def sub
	 @var=Proc.new{
	 	|num1,num2|
	 	sub = num1.to_i - num2.to_i
	 	puts "Substraction of #{num1} & #{num2} is : #{sub}"
	 }
	 @var[@@num1,@@num2]
	end
	
	def mul
	 @var=Proc.new{
	 	|num1,num2|
	 	mul = num1.to_i * num2.to_i
	 	puts "Multiplication of #{num1} & #{num2} is : #{mul}"
	 }
	 @var[@@num1,@@num2]
	end
	
	def div
	 @var=Proc.new{
	 	|num1,num2|
	 	divi = num1.to_f / num2.to_f
	 	puts "Division of #{num1} & #{num2} is : #{divi}"
	 }
	 @var[@@num1,@@num2]
	end
end

calc = Calculator.new
calc.sum
calc.sub
calc.mul
calc.div
