class BreweriesController < ApplicationController

	def create
		@brewery = Brewery.new(
			name: params[:name],
			location: params[:location]
		)
		@brewery.save

		render json: @brewery
	end

	def index
		render json: Brewery.return_brewery_index_info
	end
end