# Extend the built-in classes. How about making your shuffle method on page
# 75 an array method? Or how about making factorial an integer method?
# 4.to_roman, anyone? In each case, remember to use self to access the object
# the method is being called on (the 4 in 4.to_roman).

class Array
	def shuffle
		rec_shuffle(self, [])
	end

	def rec_shuffle(initial_array, shuffled_array)
		#pick element from array at random
		rand_index = rand(initial_array.length)
		element = initial_array[rand_index]
		#add to shuffled array
		shuffled_array << element
		#remove from initial array
		initial_array.delete_at(rand_index)
		#repeat 
		if initial_array.length > 0
			rec_shuffle(initial_array, shuffled_array) 
		else
			shuffled_array
		end
	end
end

class Integer
	def factorial
		return 1 if self<= 1
		self * (self-1).factorial
	end
end

class Integer
	def old_roman_numeral 
		raise 'Must use positive integer' if self <= 0
		roman = ''
		roman << 'M' * (self / 1000)
		roman << 'D' * (self % 1000 / 500)
		roman << 'C' * (self % 500 / 100)
		roman << 'L' * (self % 100 / 50)
		roman << 'X' * (self % 50 / 10)
		roman << 'V' * (self % 10 / 5)
		roman << 'I' * (self % 5 / 1)
		roman
	end
end

p 7.factorial.old_roman_numeral.split(//).shuffle