class Monument < ApplicationRecord
	validates_presence_of :monument_type, :length, :width, 
	:height, :color, :price_currency
end
