require 'takeaway'

describe Takeaway do 

	before(:each) do
		menu = double('Menu')
		takeaway = Takeaway.new(menu)
	end


	it 'has a menu' do
		expect(takeaway.menu).not_to eq nil
	end

	it 'can place an order' do
		order = double('Order')
		expect(takeaway.place_order(order)).to eq 'You have successfully placed an order.'
	end
	
end