class Publics::OrdersController < ApplicationController

	def index
		@orders = current_public.orders
	end

	def show
		@order = Order.find(params[:id])
    @order_items = @order.order_items
	end
	
end
