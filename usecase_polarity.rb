require "./polarity"
puts "Starting"
#Some sample text
sample_text = "ONE TWO THREE Pragmatic QUERYWORD. 
FOUR THREE TWO ONE TWO THREE QUERYWORD Conservative"

sample_text2 = "The book is the first in the a series of books under the The Pragmatic Bookshelf label and copyright The Pragmatic Programmers, LLC. There is a certian kind of Melodramatic attitude with the bookshelf"
query = "Bookshelf"

#a new instance of the polarity class
test = Polarity.new

#add query
test.add_query(query)
#add text to search over
test.add_text(sample_text2)

test.lookup_positive_words

puts "Finishing"