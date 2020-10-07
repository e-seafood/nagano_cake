class Publics::OrdersController < ApplicationController

include ApplicationHelper

def new
  @carts = Cart.where(public_id: current_public.id)
  if @carts.blank?
    redirect_to carts_path
  end
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
  elsif params[:select_address] == "登録済住所から選択"
    @shipping =  Shipping.find(params[:id])
    @order.postcode = @shipping.postcode
    @order.address = @shipping.address
    @order.name = @shipping.name
  else
    @shipping = Shipping.new
    @shipping.public_id = current_public.id
    @shipping.postcode = params[:order][:postcode]
    @shipping.address = params[:order][:address]
    @shipping.name = params[:order][:name]
    @shipping.save
    @order.postcode = @shipping.postcode
    @order.address = @shipping.address
    @order.name = @shipping.name
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
    @order_item.order_id = @order.id
    @order_item.item_count = cart.item_count
    @order_item.tax_included_price = sub_total(cart)
    @order_item.save
  end
  @carts.destroy_all
end

def thank
end

def index
	@orders = current_public.orders
end

def show
  @order = Order.find(params[:id])
  @carts = Cart.where(public_id: current_public.id).order(item_id: "ASC")
	@order_items = @order.order_items
end

private
def order_params
	params.require(:order).permit(:public_id, :status, :postcode, :address, :name, :payment, :postage, :amount)
end

end
