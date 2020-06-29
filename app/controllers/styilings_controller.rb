class StyilingsController < ApplicationController
   before_action :authenticate_user!, only: [:index,:edit,:new,:show]
   before_action :logged_in_user, only: [:edit]

   def index_list
       @styilings = Styiling.all.page(params[:page]).per(6).reverse_order
       @styilings1 = Styiling.where(gender:"男性").page(params[:page]).per(6).reverse_order
       @styilings2 = Styiling.where(gender:"女性").page(params[:page]).per(6).reverse_order
   end

   def index
   	   @styilings = Styiling.all.page(params[:page]).per(6).reverse_order
   	   @styilings1 = Styiling.where(gender:"男性").page(params[:page]).per(6).reverse_order
   	   @styilings2 = Styiling.where(gender:"女性").page(params[:page]).per(6).reverse_order
       @user = User.find(params[:id]) 
   end

   def show
   	   @styiling = Styiling.find(params[:id])
       @user = @styiling.user
       @styiling_comment = StyilingComment.new
   end

   def edit 
       @styiling = Styiling.find(params[:id])
   end

   def update
       @styiling = Styiling.find(params[:id])
       @styiling .update(styiling_params)
       redirect_to  styiling_path(@styiling.id)
   end

   def destroy
    　　styiling = Styiling.find(params[:id])
    　　styiling.destroy
       redirect_to styilings_index_path(current_user)
   end
   
   def new
   	    @styiling = Styiling.new
   end

   def create
        @styiling = Styiling.new(styiling_params)
        @styiling.user = current_user
        @styiling.save
        redirect_to styilings_index_path(current_user)
   end

   private

   def styiling_params
    params.require(:styiling).permit(:user_id,:styling_image,:detail,:item_one,:item_two,:item_three,:item_four,:item_five,:item_six,
    	:item_seven,:item_eight,:brand_one,:brand_two,:brand_three,:brand_four,:brand_five,:brand_six,:brand_seven,:brand_eight,:gender, :user_id )
   end

    def logged_in_user
       @styiling = Styiling.find(params[:id])
    if @styiling.user.id != current_user.id
       redirect_to user_path(current_user)
      end
    end
end
