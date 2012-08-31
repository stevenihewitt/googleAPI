require "rubygems"
require "active_support"
require 'open-uri'
require 'uri'


class GoogleAPI
  
  def initialize
    @search_results = Array.new
    @query = ""
    @url = ""
  end
  
  def add_query(passed_query)
    @query = passed_query
    @url = 
    @url = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=#{URI.escape(@query.gsub!(" ", "+"))}" 
    
  end
  
  def return_query
    puts @query
  end
  
  def return_google_address
    puts @url
  end
  
  def return_search_results
  result = ActiveSupport::JSON.decode(open(@url).read)
  puts result
  end
  
    
  def output_test_results
    
    @search_results << ["Webpage 1", "http://www.webpage1.com", "Snippet about Webpage 1"]
    @search_results << ["Webpage 2", "http://www.webpage2.com", "Snippet about Webpage 2"]
    @search_results << ["Webpage 3", "http://www.webpage3.com", "Snippet about Webpage 3"]
           
    return @search_results
    
  end
  
end
  