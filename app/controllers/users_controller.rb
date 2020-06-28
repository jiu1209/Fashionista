class UsersController < ApplicationController
	 before_action :logged_in_user, only: [:edit, :update]

	def index
		@users =User.all.page(params[:page]).per(8).reverse_order
		@users1 = User.where(gender:"女性").page(params[:page]).per(8).reverse_order
		@users2 = User.where(gender:"男性").page(params[:page]).per(8).reverse_order
	end

	def show
		@user = User.find(params[:id])
		@styilings = @user.styilings
	end

	def edit
		@user = User.find(params[:id])

	if  @user = current_user

    else
	  render "show"	
    end
  end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user.id)
	end

	def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:success] = 'ユーザーを削除しました。'
        redirect_to new_user_registration_path
    end

	private
	 def user_params
    	params.require(:user).permit(:email, :name, :gender,:height, :image, :favorite_brand, :introduction)
    end

    def logged_in_user
       @user = User.find(params[:id])
    if @user.id != current_user.id
       redirect_to user_path(current_user)
      end
    end
end