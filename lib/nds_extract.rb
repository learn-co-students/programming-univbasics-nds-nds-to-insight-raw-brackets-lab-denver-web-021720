$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
vm = nds
i = 0
total = 0
result = {}
while i < vm.length do 
  j = 0
  while j < vm[i][:movies].length do 
    total += vm[i][:movies][j][:worldwide_gross]
    j += 1
  end
  result[vm[i][:name]] = total
  total = 0
  i += 1
end
  return result
  nil
end
