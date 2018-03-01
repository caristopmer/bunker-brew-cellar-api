class Beer < ApplicationRecord
	belongs_to :style
	belongs_to :brewery

	validates :name, :brewery_id, :quantity, presence: true
end