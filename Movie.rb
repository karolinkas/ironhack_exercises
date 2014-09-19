require 'pry'
require 'imdb'

puts "Good Morning!"


class MovieList
    def initialize(file)
        @list = []
        @list_hash = {}
        File.open(file).each do |line|
            @list << line.strip
        end
        @list
    end 

    def show
        @list
    end 
 # binding.pry
end

class MovieSearch
    attr_accessor :search_list
    
    def search(supermovies)
        @search_list=[]
        supermovies.each{ |n| @search_list << Imdb::Search.new(n).movies[0].rating }
        p @search_list
    end

end

class Symbolmaker

    def visualise(search)
        
        visuals = search.each{ |n| puts "*"*n }
        p visuals
        binding.pry  
    end

end



supermovies=MovieList.new("movies.txt").show


ratinglist=MovieSearch.new
results=ratinglist.search(supermovies)

nicey=Symbolmaker.new
nicey.visualise(results)




