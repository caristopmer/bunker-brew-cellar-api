class BeersController < ApplicationController

	def create
		@beer = Beer.new(
			name: params[:name],
			brewery_id: params[:brewery_id],
			quantity: params[:quantity]
		)
		@beer.save

		render json: @beer
	end

	def index
		render json: Beer.return_beer_index_info
	end

	def take
		@beer = Beer.find(params[:id])
		@beer.quantity -= 1
		@beer.save

		@selection = Selection.new(beer_id: @beer.id)
		@selection.save

		render json: @beer.quantity
	end

	def restock
		@beer = Beer.find(params[:id])
		@beer.quantity += params[:restockQuantity]
		@beer.save

		render json: @beer.quantity
	end
end