class Publics::PublicsController < ApplicationController

	def show
    @public = current_public
	end
	
	def unsubscribe
	end

	def withdraw
    @public = current_customer
    @public.update(is_valid: true)

    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
	end

	def edit
    @public = current_customer
	end

	def update
    @public = current_customer
		if @public.update(public_params)
      flash[:success] = "登録情報を変更しました"
      redirect_to customers_path
    else
      render :edit and return
    end
	end

	private

	def public_params
		params.require(:public).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :email, :address, :tel)
  end

end
