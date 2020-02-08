$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # AoHoAoH
  dir_index = 0
  dir_gross = {}
  while dir_index < nds.length do
    director = nds[dir_index][:name]
    movies = nds[dir_index][:movies]
    inner_index = 0
    dir_gross[director] = 0
    while inner_index < movies.length do
      dir_gross[director] += movies[inner_index][:worldwide_gross]
      inner_index += 1
    end
    dir_index += 1
  end
  dir_gross
end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

def print_directors(nds)
  pp nds
end

print_directors(directors_database)
directors_totals(directors_database)