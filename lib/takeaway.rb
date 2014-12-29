class Takeaway

	attr_accessor :menu

	def initialize(menu)
		@menu = menu
	end

	def place_order(order)
		if order.correct?
			return 'You have successfully placed an order.'
		else 
			raise 'Sorry, the total did not match.'
		end
	end

end