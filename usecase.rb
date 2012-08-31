require "./googleAPI"

test = GoogleAPI.new

test.add_query("Pokemon") #add query
test.return_query #display query on console
test.return_google_address #display google url on console

test.return_search_results #get google search results
test.search_results_to_s #display google search results on console