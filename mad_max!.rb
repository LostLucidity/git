# mad_max!.rb

# Define a method named max that takes two numbers as arguments and returns the largest of them.

# Don’t worry about being defensive with this one. 
# Assume the arguments are numeric. 
# But still, make sure you write tests! 
# Submit both your method and the test(s) for that method.

# def max(x, y)
# 	[x, y].max
# end

def max(x=0, *rest)
	!rest.empty? ? [x, rest.max].max : x
end


def test
	puts max(99, 0)==99
	puts max(0, 99)==99
	puts max(50, 50)==50
	puts max(-8, 8)==8
	puts max(0.00, 0)==0
	puts max(-0.00, 0.00)==0
	puts max(5*4, 21)==21
	puts max(2,3)==3
	puts max() == 0
	puts max(3, 6, 777, 9394, -4959, 449, 0.000558)==9394
end

test()

# p [[], nil].max