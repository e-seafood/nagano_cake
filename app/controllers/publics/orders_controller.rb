class Publics::OrdersController < ApplicationController

def new
  @order = Order.new
  @shippings = Shipping.where(public_id: current_public.id)
end

def confirm
  @order = Order.new(order_params)
  @order.public_id = current_public.id
  @carts = Cart.where(public_id: current_public.id)
  if :select_addres == "ご自身の住所"
    @order.postcode = current_public.postcode
    @order.address = current_public.address
    @order.name = current_public.name
  elsif :select_address == "登録済みの住所"
  else
  end
    
  @order.save
  redirect_to order_confirm_path(@order)
end

  private
  def order_params
    params.require(:order).permit(:public_id, :status, :postcode, :address, :name, :payment, :postage, :amount)
  end

end
