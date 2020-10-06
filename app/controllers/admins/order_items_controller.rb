class Admins::OrderItemsController < ApplicationController
	def update
		@order = Order.find(params[:id])
		order_item = OrderItem.find(params[:id])
		order_item.update(order_item_params)
	end
private
	def order_item_params
		params.require(:order_item).permit(:item_count,:making_status,:tax_icluded_price)
	end
end
