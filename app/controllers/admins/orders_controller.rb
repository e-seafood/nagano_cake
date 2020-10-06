class Admins::OrdersController < ApplicationController
	def top
	end
	
	def index
		@orders = Order.all
	end

	def show
	end

	def update
	end



private
	def order_params
		params.require(:order).permit(:status,:postcode,:address,:name,:payment,:postage,:amount)
	end

end
