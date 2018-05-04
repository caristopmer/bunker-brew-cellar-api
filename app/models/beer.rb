class Beer < ApplicationRecord
	belongs_to :style
	belongs_to :brewery

	validates :name, :brewery_id, :quantity, presence: true

	def self.return_beer_index_info
		beers_index_info = [];
		Beer.order(quantity: :desc).all.each do |beer|
			beers_index_info << {
				id: beer.id,
				name: beer.name,
				brewery: beer.brewery,
				style: beer.style.name,
				quantity: beer.quantity,
				abv: beer.abv
			}
		end
		return beers_index_info	
	end
end