class Publics::PublicsController < ApplicationController
		
		before_action :authenticate_public!

	def show
    @public = current_public
	end

	def unsubscribe
	end

	def withdraw
		@public = current_public	
		@public.update(is_deleted: true)

    reset_session
    redirect_to root_path
	end

	def edit
	end

	def update
    public = Public.find(current_user.id)
		if public.update(public_params)
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
