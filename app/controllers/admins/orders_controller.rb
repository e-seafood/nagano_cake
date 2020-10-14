class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def top
    @orders = Order.where("created_at >= ?", Date.today)
  end

  def index
    if params[:type] == 'public'
      @public = Public.find(params[:id])
      @orders = @public.orders.page(params[:page])
    elsif params[:type] == 'today'
      @orders = Order.where("created_at >= ?", Date.today).page(params[:page])
    else
      @orders = Order.all.page(params[:page])
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    if @order.status == "入金確認"
      @order.order_items.update(making_status: "製作待ち")
    else
      redirect_to request.referer
    end
  end

  private

  def order_params
    params.require(:order).permit(:status, :postcode, :address, :name, :payment, :postage, :amount)
  end
end
