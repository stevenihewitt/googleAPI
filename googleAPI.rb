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
  
  #adds the query and creates google url
  def add_query(passed_query)
    @query = passed_query
    @url = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=#{URI.escape(@query.gsub!(" ", "+"))}&rsz=large"

    
  end
  
  #Displays the Query
  def return_query
    puts @query
  end
  
  #Displays the google search url
  def return_google_address
    puts @url
  end
  
  #Will return and array or arrays - [title, url, snippet]
  def return_search_results
    
    #ecode results
    result = ActiveSupport::JSON.decode(open(@url).read)["responseData"]["results"]
  
    #for each result, add to an array to an array
    result.each do |page|
      @search_results << [ page['title'], page['url'], page['content'] ]   
      end
      
    return @search_results
    
  end
  
  def search_results_to_s
    #this just displays the data to terminal
    @search_results.each  do |x| 
      puts "---Search Result---"+ "-"*30
      puts x    
      end
      
    puts "-"*50
      
    end
  
  #This function is purely for testing purposes  
  def output_test_results
    
    @search_results.clear
    @search_results << ["Webpage 1", "http://www.webpage1.com", "Snippet about Webpage 1"]
    @search_results << ["Webpage 2", "http://www.webpage2.com", "Snippet about Webpage 2"]
    @search_results << ["Webpage 3", "http://www.webpage3.com", "Snippet about Webpage 3"]
           
    return @search_results
    
  end
  
end
  