## Words from http://www.kisd.org/khs/english/help%20page/Descriptive%20Words.htm

#Current restrictions
  # - Query can only be a single word at this stage
  # - Positive words have been precompiled rather than using an external source.
  
class Polarity

def initialize
  @positive = Array.new
  @text = []
  @query = ""
  @positive = %w(
  Authentic 
  Inspirational
  Reactionary
  Conservative
  Ironic
  Realistic
  Controversial
  Liberal
  Recondite
  Credible
  Melodramatic
  Romantic
  Cultural
  Mystical
  Satiric
  Didactic
  Naturalistic
  Scholarly
  Dramatic
  Objective
  Significant
  Esoteric
  Orthodox
  Spiritual
  Expressionistic
  Philosophic
  Subjective
  Fanciful
  Plausible
  Symbolic
  Humanistic
  Pragmatic
  Utilitarian
  Humorous
  Profound
  Impressionistic
  Radical
  )
end

def add_text(text)
  
  @text = text.split(" ")
  
end

def add_query(query)
  
  @query = query.downcase
  
end

def adjacent_range array, position, scope
  [0, (position-scope)].max..[array.size-1, (position+scope)].min
end
 
def adjacent_items array, position, scope
  adjacent_range(array, position, scope).map {|i| array[i]}
end

def lookup_positive_words

#how many words to look either side of query
scope = 5
text_length = @text.length - 1

  if (@query == "")|(@text == nil) #do nothing is text is empty
    else
      
      @text.each_with_index do |word, i|
        if (word.downcase == @query)
          
          matches = adjacent_items(@text, i, scope) & @positive
          
          #this can be commented out, its just for terminal output
          # puts "\nWord: #{word}"
          # puts "Adjacent (#{scope}): #{adjacent_items(@text, i, scope)}"
          # puts matches
          #####
          
          if !matches.empty?
            puts "\nMatches Found\n #{matches}"
            @text[i] = @text[i] + "++"
          else 
            puts "\nNo Matches Found\n"
          end   
          
        
        end

       end
      
        puts "\n\n"
        print @text
        
      
    end

end

def return_text
  return @text
end


 
end