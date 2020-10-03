class Publics::PublicsController < ApplicationController

	def show
    @public = current_public
	end
	
	def unsubscribe
	end

	def withdraw
	end

	def edit
    @public = current_public
	end

	def update
    @public = current_public
		if @public.update(public_params)
      redirect_to publics_path
    else
      render :edit 
    end
	end

	private

	def public_params
		params.require(:public).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :email, :address, :tel)
  end

end
