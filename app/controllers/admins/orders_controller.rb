class Admins::OrdersController < ApplicationController

before_action :authenticate_admin!

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
		if 	@order.status == "入金確認"
			@order.order_items.update(making_status: "製作待ち")
  			redirect_to request.referer
  		else
  			redirect_to request.referer
  		end
	end

    private
	def order_params
		params.require(:order).permit(:status,:postcode,:address,:name,:payment,:postage,:amount)
	end

end
