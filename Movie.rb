require 'pry'
require 'imdb'


class MovieList
    def initialize(file)
        @list = []
        @list_hash = {}
        File.open(file).each do |line|
            @list << line.strip
        end
        # @list
    end 

    def show
        @list
    end 
 # binding.pry
end

class MovieSearch
    attr_accessor :search_list
    
    def search(supermovies)
        @search_list=[7.8, 8.3, 9.2, 7.4, 7.7, 8.0, 7.7]
        # supermovies.each{ |n| @search_list << Imdb::Search.new(n).movies[0].rating }
        # p @search_list
    end

end

class Symbolmaker

    def visualise(search)
        
        visuals = search.each{ |n| puts "*"*n }
        # p visuals
        # binding.pry  
    end

end



supermovies=MovieList.new("movies.txt").show
supermovies.each_with_index{|n,i| puts (i+1).to_s + ". " + n}

ratinglist=MovieSearch.new
results=ratinglist.search(supermovies)
# puts results

nicey=Symbolmaker.new
nicey.visualise(results)





