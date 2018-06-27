FactoryBot.define do
	factory :monument do
		monument_type "Bevel"
		single? false
		length "18"
		width "4"
		height "16"
		color "Grey"
		price_currency 100
	end 
end