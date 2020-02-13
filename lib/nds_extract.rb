$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  directors_index = 0
  totals = {}

  while directors_index < nds.length do
    director_name = nds[directors_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[directors_index][:movies].length do
      totals [director_name] += nds[directors_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    directors_index += 1
  end
  totals
end

  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
