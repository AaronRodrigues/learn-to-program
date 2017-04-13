lineWidth = 30
# table = "Table of Contents"
chap1 = "Chapter 1: Numbers"
chap2 = "Chapter 2: Letters"
chap3 = "Chapter 3: Variables"

page1 = "page 1"
page2 = "page 72"
page3 = "page 118"

puts ('Table of Contents'.center (lineWidth*2))
puts ""
puts chap1.ljust(lineWidth) + page1.rjust(lineWidth)
puts chap2.ljust(lineWidth) + page2.rjust(lineWidth)
puts chap3.ljust(lineWidth) + page3.rjust(lineWidth)
