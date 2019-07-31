class SelectionsController < ApplicationController

	def most_popular
		render json: Selection.most_popular_selections
	end

end