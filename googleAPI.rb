

class GoogleAPI
  
  def initialize
    @search_results = Array.new
    @query = ""
  end
  
  def add_query(passed_query)
    @query = passed_query
  end
  
  def return_query
    puts @query
  end
  
    
  def output_test_results
    
    @search_results << ["Webpage 1", "http://www.webpage1.com", "Snippet about Webpage 1"]
    @search_results << ["Webpage 2", "http://www.webpage2.com", "Snippet about Webpage 2"]
    @search_results << ["Webpage 3", "http://www.webpage3.com", "Snippet about Webpage 3"]
           
    return @search_results
    
  end
  
end
  