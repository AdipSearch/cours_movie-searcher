class SearchMovie
	def search(film)
		@film = film		
	end

	def log_in_to_tmdb
		@client = Tmdb::Api.key(Figaro.env.KEY_HERE)
		end
	end

	def perform
		
	end
end