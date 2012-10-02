require "./googleAPI"
require "./doc_matrix"

#Index that snippets are at.
snippet = 2

#Create a new DocMatrix
matrix = DocMatrix.new

#Create a new search
search = GoogleAPI.new
search.add_query("Parenting 101") #add query

results = search.return_search_results #get google search results

results.each do |result|
  matrix.add_doc(result[snippet].to_s) #Add snippet to doc matrix
end

matrix.create_matrix #create document matrix

