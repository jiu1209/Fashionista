class StyilingsController < ApplicationController
   before_action :authenticate_user!, only: [:index,:edit,:new,:show]
   before_action :logged_in_user, only: [:edit]
   
   def all_ranking
       @all_ranks = Styiling.find(Favorite.group(:styiling_id).order('count(styiling_id) desc').limit(9).pluck(:styiling_id))
   end

   def women_ranking
       @gender_ranks = Styiling.joins(:favorites).where(gender:"女性").group(:styiling_id).order('count(favorites.styiling_id) desc').limit(9)
   end

    def men_ranking
       @gender_ranks = Styiling.joins(:favorites).where(gender:"男性").group(:styiling_id).order('count(favorites.styiling_id) desc').limit(9)
   end

   def women_ranking_info
        @gender_ranks = Styiling.joins(:favorites).where(gender:"女性").group(:styiling_id).order('count(favorites.styiling_id) desc').limit(9)
   end

    def men_ranking_info
        @gender_ranks = Styiling.joins(:favorites).where(gender:"男性").group(:styiling_id).order('count(favorites.styiling_id) desc').limit(9)
   end

   def all_ranking_info
       @all_ranks = Styiling.find(Favorite.group(:styiling_id).order('count(styiling_id) desc').limit(9).pluck(:styiling_id))
   end

   def women_index
       @styilings = Styiling.where(gender:"女性").page(params[:page]).per(15).reverse_order
   end
   
   def women_index_info
       @styilings = Styiling.where(gender:"女性").page(params[:page]).per(15).reverse_order
   end

   def men_index
       @styilings = Styiling.where(gender:"男性").page(params[:page]).per(15).reverse_order
   end

   def men_index_info
       @styilings = Styiling.where(gender:"男性").page(params[:page]).per(15).reverse_order
   end

   def index_list
       @styilings = Styiling.all.page(params[:page]).per(15).reverse_order
   end

   def index
   	   @styilings = Styiling.all.page(params[:page]).per(15).reverse_order
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
     if@styiling .update(styiling_params)
       flash[:complete] = "＊ スタイリングを更新しました。"
       redirect_to  styiling_path(@styiling.id)
     else
       render "edit"
     end
   end

   def destroy
       styiling = Styiling.find(params[:id])
       styiling.destroy
       flash[:dastory] = "＊ スタイリングを削除しました。"
       redirect_to styilings_index_path(current_user)
   end
   
   def new
   	    @styiling = Styiling.new
   end

   def create
        @styiling = Styiling.new(styiling_params)
        @styiling.user = current_user
   if   @styiling.save
        flash[:complete] = "＊ スタイリングを投稿しました。" 
        redirect_to styilings_index_path(current_user)
   else
        render "new"
    end
  end

   private

   def styiling_params
    params.require(:styiling).permit(:user_id,:styling_image,:detail,:item_one,:item_two,:item_three,:item_four,:item_five,:item_six,
    	:item_seven,:item_eight,:brand_one,:brand_two,:brand_three,:brand_four,:brand_five,:brand_six,:brand_seven,:brand_eight,:gender, :user_id )
   end

   def bookmarks
    @styilings = current_user.bookmark_boards.includes(:user).recent
   end

    def logged_in_user
       @styiling = Styiling.find(params[:id])
    if @styiling.user.id != current_user.id
       redirect_to user_path(current_user)
      end
    end
end
