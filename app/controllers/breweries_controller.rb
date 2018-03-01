class BreweriesController < ApplicationController

	def create
		brewery = Brewery.new(name: params[:name])
		brewery.save
	end

end