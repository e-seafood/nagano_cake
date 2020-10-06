class Publics::OrdersController < ApplicationController

def new
  @order = Order.new
  @shippings = Shipping.where(public_id: current_public.id)
end

def confirm
  @order = Order.new(payment: params[:order][:payment])
  @carts = Cart.where(public_id: current_public.id).order(item_id: "ASC")
  if params[:select_address] == "ご自身の住所"
    @order.postcode = current_public.postcode
    @order.address = current_public.address
    @order.name = current_public.last_name + current_public.first_name
  end
end

def create
  @order = Order.new(order_params)
  @order.public_id = current_public.id
  @order.save
  redirect_to thank_orders_path
  @carts = Cart.where(public_id: current_public.id)
  @carts.each do |cart|
    @order_item = OrderItem.new
    @order_item.item_id = cart.item_id
    @order_item.order_id = @order_id
    @order_item.item_count = cart.item_count
  end
  @carts.destroy_all
end

def thank
end

  private
  def order_params
    params.require(:order).permit(:public_id, :status, :postcode, :address, :name, :payment, :postage, :amount)
  end

end
