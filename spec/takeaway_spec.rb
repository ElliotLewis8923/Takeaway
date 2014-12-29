require 'takeaway'

describe Takeaway do 

	it 'has a menu' do
		menu = double('Menu')
		takeaway = Takeaway.new(menu)
		expect(takeaway.menu).not_to eq nil
	end

	it 'can place an order' do
		menu = double('Menu')
		order = double('Order')
		takeaway = Takeaway.new(menu)
		expect(takeaway.place_order(order)).to eq 'You have successfully placed an order.'
	end
	
end