class StylesController < ApplicationController

	def create
		style = Style.new(name: params[:name])
		beer.save
	end

end