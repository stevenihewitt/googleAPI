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

def lookup_positive_words

#how many words to look either side of query
scope = 5
text_length = @text.length - 1

  if (@query == "")|(@text == nil)
    else
      
      #@text.each do |word|
      for index in 0..text_length
        
        word = @text[index].tr(".", "")
        if (word.downcase == @query) then
          
          puts "\nWord found at Index #{index}\n"
          

          
          startpoint = index - scope
          finishpoint = index + scope
          words_in_scope = @text[(startpoint < 0 ? 0 : startpoint)..(finishpoint < text_length ? finishpoint : text_length)]          
          print words_in_scope
          matches = words_in_scope & @positive
          if !matches.empty?
            puts "\nMatches Found\n"
          else 
            puts "\nNo Matches Found\n"
          end
        end
        
      end
      #find array element with content equal to the query
      #Look at array elements either side within scope
      #if a keyword is found - append queryword in array with ++
      
      
    end

end



 
end