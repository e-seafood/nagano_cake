class Admins::OrdersController < ApplicationController
	def top
	end

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
  		@order.update(order_params)
  		order_item.update(order_item_params)
  		redirect_to request.referer
	end



private
	def order_params
		params.require(:order).permit(:status,:postcode,:address,:name,:payment,:postage,:amount)
	end

	def order_item_params
		params.require(:order_item).permit(:item_count,:status,:tax_icluded_price)
	end

end
