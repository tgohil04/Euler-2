require 'spec_helper'

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

describe 'Euler2' do
	# Wrapper 1
	it 'should return 3 if we pass the values 1, 2' do
		x = Euler2.new
		expect(x.sequence(1, 2)).to eq(3)

	end

	# Wrapper 2
	it 'should push solution from sequence to array' do
		x = Euler2.new
		expect(x.array_push([1, 2], 3)).to eq([1, 2, 3])
	end

	# Wrapper 3
	it 'should add the last two integers in the array' do
		x = Euler2.new
		expect(x.add_last_two([1,2,3])).to eq(5)
	end

	# Wrapper 4
	it 'should return Fibonacci sequence when last number in sequence is less than 90' do
		x = Euler2.new
		expect(x.range(90)).to eq([1, 2, 3, 5, 8, 13,21, 34, 55, 89])
	end

	# Wrapper 5
	it 'should add all of the even-valued terms into an array' do
		x = Euler2.new
		expect(x.even_values(90, [1, 2, 3, 5, 8, 13,21, 34, 55, 89])).to eq([2, 8, 34])
	end

	# Wrapper 6
	it 'should add all of the even-valued terms in first 10 terms of Fibonacci sequence' do
		x = Euler2.new
		expect(x.add_even_values(90, [2, 8, 34])).to eq(44)
	end

end



