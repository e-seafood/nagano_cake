class Admins::OrderItemsController < ApplicationController

before_action :authenticate_admin!

	def update
		@order_item = OrderItem.find(params[:id])
		@order_item.update(order_item_params)
    	if
    		@order_item.making_status == "製作中"
      		@order_item.order.update(status: "製作中")
    	elsif
    		@order_item.making_status == "製作完了"
    		order = @order_item.order.order_items
      		if
      			order.count == order.where(making_status: "製作完了").count
        		@order_item.order.update(status: "発送準備中")
      		end
    	end
      @order = @order_item.order
	end
private
	def order_item_params
		params.require(:order_item).permit(:item_count,:making_status,:tax_icluded_price)
	end
end
