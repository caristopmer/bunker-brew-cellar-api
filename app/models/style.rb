class Style < ApplicationRecord
	has_many :beers

	validates :name, presence: true

	def self.return_style_index_info
		styles_index_info = [];
		Style.order(name: :desc).all.each do |style|
			styles_index_info << {
				id: style.id,
				name: style.name
			}
		end
		return styles_index_info	
	end
end