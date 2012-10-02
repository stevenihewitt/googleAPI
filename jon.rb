def adjacent_range array, position, scope
  [0, (position-scope)].max..[array.size-1, (position+scope)].min
end
 
def adjacent_items array, position, scope
  adjacent_range(array, position, scope).map {|i| array[i]}
end
 
@text = %w[the quick brown fox jumps over the lazy dog]
@scope = 3
 
@text.each_with_index do |word, i|
  puts "Word: #{word}"
  puts "Adjacent (#{@scope}): #{adjacent_items(@text, i, @scope)}"
  end