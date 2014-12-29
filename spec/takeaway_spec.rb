require 'takeaway'

describe Takeaway do 

		let(:menu)						{ double :menu 									 }
		let(:takeaway)				{ Takeaway.new(menu) 						 }
		let(:order)						{ double :order, correct?: true	 }
		let(:incorrect_order) { double :order, correct?: false }

	it 'has a menu' do
		expect(takeaway.menu).not_to eq nil
	end

	it 'can place an order' do
		expect(takeaway.place_order(order)).to eq 'You have successfully placed an order.'
	end

	it 'raises an exception for an incorrectly placed order' do
		expect { (takeaway.place_order(incorrect_order)) }.to raise_exception
	end

end