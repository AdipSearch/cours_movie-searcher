class SearchMovie
	require 'themoviedb'
	Tmdb::Api.key(Figaro.env.KEY_HERE)

	def initialize(film)
		@film = film		
	end

	def search_movie
		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(@film) # the query to search against
		@search.fetch # makes request
		
	end

	
		
	

	def perform
		search_movie
		
	end
end