#!usr/bin/ruby
class DocMatrix

  #these are the Arrays I need
	def initialize
  		@document_collection = Array.new
  		@master_word_list = Array.new
  		@words_in_documents = Array.new
	end
  
  #to String method to implement
	def toString
	
	end
	
	#Add a document to the collection
  	def add_doc (document)
    	@document_collection << document
    end

	#Create a Word List Matrix
  	def create_matrix
  	
   		if @document_collection.empty?
   			puts "File is Empty"
   
     	elsif
  			@document_collection.each {|document| #loop over documents
  			  
  			  puts document #print the document here to examine
  			  puts "================="
				#splits into words, removes small words, lower cases, adds to hash, and gets number of occurrences
				@words_in_documents << document.downcase.scan(/[a-z0-9'-]{3,}/)
														.inject(Hash.new 0){ |hash, word| hash[word] += 1; hash } 
			}
				  
				  
				#Show the words and counts in each document
  				@words_in_documents.each do |docHash|
		    	puts "------Hash--------"
		    	puts docHash.inspect
		    	
		    	
				#Add words to the master list
	    		@master_word_list << docHash.keys
  			end
  			
  		puts "----Master Word List-----"
  		#Convert Keys to String and make unique
	  	@master_word_list = @master_word_list.flatten.uniq
	  	
	  	#Print each word out
		@master_word_list.each {|x| print "#{x} "}
		puts "\n\n-----------------"
		
		#Display total words
		print "Total Unique Words: #{@master_word_list.size}"

		puts "\n\n"
  		end

  	end
end		#End of Class

