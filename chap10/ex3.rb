# Better Logger. The output from that last logger was kind of hard to read, and
# it would just get worse the more you used it. It would be so much easier to
# read if it indented the lines in the inner blocks. To do this, you'll need to
# keep track of how deeply nested you are every time the logger wants to write
# something. To do this, use a global variable, a variable you can see from
# anywhere in your code. To make a global variable, just precede your variable
# name with $, like these:  $global, $nestingDepth, and $bigTopPeeWee. In the
# end, your logger should output code like this: Beginning "outer block"...
# Beginning "some little block"...     Beginning "teeny-tiny block"...
# ..."teeny-tiny block" finished, returning:  lots of love   ..."some little
# block" finished, returning:  42   Beginning "yet another block"...   ..."yet
# another block" finished, returning:  I love Indian food! ..."outer block"
# finished, returning:  true

def log (description, &block)
	line_width= 20 
	puts (("Beginning "+ description).center(line_width* $nestingDepth))
	
	# puts(("Starting"+description).rjust(line_width))
	value=block.call
	puts (("Finished "+description+" , returning :" +value.to_s).center(line_width* $nestingDepth))
	
end
$nestingDepth = 1	
			log ' outer block'  do
			
					
	
							$nestingDepth += 1
							log ' inner block' do
								
								double= 20*2
								end
									$nestingDepth += 1
									log ' inner city block' do
										$nestingDepth +=1
										' Zach is a small boy'
									end
			$nestingDepth = 1
			false
			end
