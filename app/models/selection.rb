class Selection < ApplicationRecord
	has_one :beer

	validates :beer_id, presence: true

	def self.most_popular_selections
		most_popular_selections = [];
		# Beer.order(selections: :desc).all.each do |beer|
		# 	beers_index_info << {
		# 		id: beer.id,
		# 		name: beer.name,
		# 		brewery: beer.brewery,
		# 		style: beer.style.name,
		# 		quantity: beer.quantity,
		# 		abv: beer.abv
		# 	}
		# end
		return most_popular_selections
	end
end