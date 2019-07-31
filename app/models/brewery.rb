class Brewery < ApplicationRecord
	has_many :beers

	validates :name, presence: true

	def self.return_brewery_index_info
		breweries_index_info = [];
		Brewery.order(name: :desc).all.each do |brewery|
			breweries_index_info << {
				id: brewery.id,
				name: brewery.name,
				location: brewery.location
			}
		end
		return breweries_index_info	
	end
end