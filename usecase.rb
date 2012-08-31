require "./googleAPI"

test = GoogleAPI.new

test.add_query("Test Query Test")
test.return_query
test.return_google_address
#testArray = test.output_test_results
#puts testArray

test.return_search_results