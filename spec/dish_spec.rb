require 'dish'

describe Dish do 
	
	it 'is initialised with a name and price' do
		dish = Dish.new('spagbol', 4.50)
		expect(dish.name).to eq 'spagbol'
		expect(dish.price).to eq 4.50
	end
	
end