# Program Logger. Write a method called log, which takes a string description of
# a block and, of course, a block. Similar to  doSelfImportantly, it should puts
# a string telling that it has started the block, and another string at the end
# telling you that it has finished the block, and also telling you what the
# block returned. Test your method by sending it a code block. Inside the block,
# put another call to log, passing another block to it. (This is called
# nesting.) In other words, your output should look something like this:

# Beginning "outer block"...
# Beginning "some little block"...
# ..."some little block" finished, returning:  5
# Beginning "yet another block"...
# ..."yet another block" finished, returning:  I like Thai food!
# ..."outer block" finished, returning:  false


def log (description, &block)
	puts 'Beginning'+description
	
	puts"Starting"+description
	value=block.call
	puts "Finished "+description+" , returning :" +value.to_s
	
end

			log ' outer block'  do
				# num = 0
				# 100.times{num+=1 }
				# 		num 
					
	

							log ' inner block' do
								double= 20*2
								end

								log ' inner city block' do
									' Zach is a small boy'
								end
			num = 0
				420.times{num+=1 }
						num 
			end
