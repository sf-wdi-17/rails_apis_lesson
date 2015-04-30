class SearchController < ApplicationController
	def index
		search = params[:q]
		if search 
			resp = Typhoeus.get("http://www.omdbapi.com", params: {s: search})
			@movies = JSON.parse(resp.body)["Search"]
		else
			@movies = []
		end
	end

	def movie
		imdbID = params[:q]
		if imdbID
			resp = Typhoeus.get("http://www.omdbapi.com", params: {i: imdbID})
			@movie = JSON.parse(resp.body)
		else
			@movie = {}
		end
	end
end
