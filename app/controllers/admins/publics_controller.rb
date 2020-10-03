class Admins::PublicsController < ApplicationController
	def index
		@publics = Public.all
	end

	def show
		@public = Public.find(params[:id])
	end

	def edit
		@public = Public.find(params[:id])
	end

	def update
		@public = Public.find(params[:id])
		@public.update(public_params)
		redirect_to admins_public_path(@public)
	end
private
	def public_params
		params.require(:public).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :email, :address, :tel, :is_deleted)
  	end
end
