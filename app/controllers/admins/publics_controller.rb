class Admins::PublicsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @publics = Public.all.page(params[:page])
  end

  def show
    @public = Public.find(params[:id])
  end

  def edit
    @public = Public.find(params[:id])
  end

  def update
    @public = Public.find(params[:id])
    if @public.update(public_params)
      redirect_to admins_public_path(@public)
    else
      render :edit
    end
  end

  private

  def public_params
    params.require(:public).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :email, :address, :tel, :is_deleted)
  end
end
