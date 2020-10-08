class Publics::CartsController < ApplicationController

  def index
    @carts = Cart.where(public_id: current_public.id).order(:item_id)
  end

  def create
    @cart = Cart.find_by(public_id: current_public.id, item_id: params[:cart][:item_id])
    if @cart.blank?
      @cart = Cart.new(cart_params)
      @cart.public_id = current_public.id
    else
      @cart.item_count += params[:cart][:item_count].to_i
    end
    if @cart.save
      redirect_to carts_path
    else
      flash.now[:alert] = 'カートに追加できませんでした。個数を選択してください。'
      @carts = Cart.where(public_id: current_public.id).order(item_id: "ASC")
      render :index
    end
  end

  def update
    @cart = Cart.find_by(id: params[:id])
    if @cart.update(cart_params)
      redirect_to carts_path
    else
      flash.now[:alert] = '個数は1以上を選択してください。'
      @carts = Cart.where(public_id: current_public.id).order(item_id: "ASC")
      render :index
    end
  end

  def destroy
    @cart = Cart.find_by(id: params[:id])
    @cart.destroy
    redirect_to carts_path
  end

  def destroy_all
    @carts = Cart.where(public_id: current_public.id).destroy_all
    redirect_to carts_path
  end

  private
  def cart_params
    params.require(:cart).permit(:public_id, :item_id, :item_count)
  end

end
