class FavoritesController < ApplicationController
	before_action :authenticate_user!, only: [:create,:destroy]

	def create
		styiling = Styiling.find(params[:styiling_id])
        favorite = current_user.favorites.new(styiling_id: styiling.id)
        favorite.save
        redirect_back(fallback_location: styilings_index_path(current_user))
	end

	def destroy
		 styiling = Styiling.find(params[:styiling_id])
         favorite = current_user.favorites.find_by(styiling_id: styiling.id)
         favorite.destroy
         redirect_back(fallback_location: styilings_index_path(current_user))
	end
end
