class Search < ApplicationRecord

	def search_movies

		movies = Movie.all

		movies = movies.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
		movies = movies.where(["category LIKE ?",category]) if category.present?

		return movies
	end

	

end
