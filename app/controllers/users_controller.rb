class UsersController < ApplicationController
	 before_action :authenticate_user!, only: [:show,:edit,:update]
	 before_action :logged_in_user, only: [:edit]
    def women_index
    	@users = User.where(gender:"女性").page(params[:page]).per(20).reverse_order
    end

    def women_index_info
    	@users = User.where(gender:"女性").page(params[:page]).per(20).reverse_order
    end

    def men_index
    	@users = User.where(gender:"男性").page(params[:page]).per(20).reverse_order
    end

     def men_index_info
    	@users = User.where(gender:"男性").page(params[:page]).per(20).reverse_order
    end

	def index_info
		@users = User.all.page(params[:page]).per(20).reverse_order
	end

	def index
		@users = User.all.page(params[:page]).per(20).reverse_order
	end

	def show
		@user = User.find(params[:id])
		@styilings = @user.styilings.page(params[:page]).per(8).reverse_order
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
	if  @user.update(user_params)
        flash[:complete] = "プロフィール情報を更新しました。" 
		redirect_to user_path(@user.id)
    else
        render "edit"
     end
	end

	def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:dastroy] = 'ユーザーを削除しました。'
        redirect_to new_user_session_path
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