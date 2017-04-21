# Make an OrangeTree class. It should have a  height method which returns its
# height, and a  oneYearPasses method, which, when called, ages the tree one
# year. Each year the tree grows taller (however much you think an orange tree
# should grow in a year), and after some number of years (again, your call) the
# tree should die. For the first few years, it should not produce fruit, but
# after a while it should, and I guess that older trees produce more each year
# than younger trees... whatever you think makes most sense. And, of course, you
# should be able to countTheOranges (which returns the number of oranges on the
# tree), and pickAnOrange (which reduces the @orangeCount by one and returns a
# string telling you how delicious the orange was, or else it just tells you
# that there are no more oranges to pick this year). Make sure that any oranges
# you don't pick one year fall off before the next year.

class OrangeTree
	def initialise
		@height = 0
		@orangeCount = 0
		@years = 0
	end
	def height
		
		puts "Tree height =  " +@height.to_s
	end

	def oneYearPasses
		@height += 3
		@years +=  1
		@orangeCount = 0
	end

	def countTheOranges
		if @height > 5
		@orangeCount = @height * 2
			else
			@orangeCount = 0
		end
			puts "The tree has " + @orangeCount.to_s + " oranges."
	end

	def pickAnOrange
		if @orangeCount > 0
		@orangeCount -= 1
		puts "That was delicious!" + @orangeCount.to_s + " left!"
			else
			puts "No more oranges this year! " 
		end
		
	end


end

orange = OrangeTree.new
orange.initialise
orange.oneYearPasses
orange.countTheOranges
orange.oneYearPasses
orange.countTheOranges
orange.oneYearPasses
orange.countTheOranges
orange.pickAnOrange
orange.pickAnOrange
orange.oneYearPasses
orange.oneYearPasses
orange.oneYearPasses
orange.countTheOranges
orange.height
