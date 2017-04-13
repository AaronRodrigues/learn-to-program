# Rewrite your Table of Contents program (from the chapter on methods). Start
# the program with an array holding all of the information for your Table of
# Contents (chapter names, page numbers, etc.). Then print out the information
# from the array in a beautifully formatted Table of Contents.

toc = ['Table of Contents', 'Chapter 1', 'Getting Started',
        'page 1', 'Chapter 2', 'Numbers', 'page 9',
        'Chapter 3', 'Letter', 'page 13']

        line_width = 30

        puts(              toc[0].center(line_width*2))
        puts
        puts(              toc[1].ljust(line_width) +
toc[2].ljust(line_width) + toc[3].ljust(line_width))
        puts(              toc[4].ljust(line_width) +
toc[5].ljust(line_width) + toc[6].ljust(line_width))
        puts(              toc[7].ljust(line_width) +
toc[8].ljust(line_width) + toc[9].ljust(line_width))
