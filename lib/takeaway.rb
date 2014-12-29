class Takeaway

	attr_accessor :menu

	def initialize(menu)
		@menu = menu
	end

	def place_order(order)
		return 'You have successfully placed an order.'
	end

end