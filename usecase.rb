require "./googleAPI"

test = GoogleAPI.new

test.add_query("TestQuery")
test.return_query

testArray = test.output_test_results

puts testArray
