class BeersController < ApplicationController

	def create
		beer = Beer.new(
			name: params[:name],
			brewery_id: params[:brewery_id],
			quantity: params[:quantity]
		)
		beer.save

		render json: beer
	end

	def index
		render json: Beer.all
	end

end