class Admins::OrdersController < ApplicationController

	def top
		#今日のオーダーを取得
		@oders = Order.where("created_at >= ?", Date.today)
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
  		redirect_to request.referer
	end

    private
	def order_params
		params.require(:order).permit(:status,:postcode,:address,:name,:payment,:postage,:amount)
	end

end
