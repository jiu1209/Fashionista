class StyilingsController < ApplicationController
   def index
   	   @styilings = Styiling.all.page(params[:page]).per(8).reverse_order
   	   @styilings1 = Styiling.where(gender:"男性").page(params[:page]).per(8).reverse_order
   	   @styilings2 = Styiling.where(gender:"女性").page(params[:page]).per(8).reverse_order
   end

   def show
   	   @styilings = Styiling.find(params[:id])
       @user = @styilings.user
   end

   def edit
   end

   def update
   end

   def destroy
   end
   
   def new
   	    @styiling = Styiling.new(user_id: params[:user_id])
   end

   def create
        @styiling = Styiling.new(styiling_params)
        @styiling.user = current_user
        @styiling.save
        redirect_to styilings_index_path
   end

   private

   def styiling_params
    params.require(:styiling).permit(:user_id,:styling_image,:detail,:item_one,:item_two,:item_three,:item_four,:item_five,:item_six,
    	:item_seven,:item_eight,:brand_one,:brand_two,:brand_three,:brand_four,:brand_five,:brand_six,:brand_seven,:brand_eight,:gender, :user_id )
   end
end
