class StylesController < ApplicationController

	def create
		@style = Style.new(name: params[:name])
		@style.save

		render json: @style
	end

	def index
		render json: Style.return_style_index_info
	end

end