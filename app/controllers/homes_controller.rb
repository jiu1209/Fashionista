class HomesController < ApplicationController
	def top
	   @styilings = Styiling.all.page(params[:page]).per(6).reverse_order
	end

	def top_info
	   @styilings = Styiling.all.page(params[:page]).per(6).reverse_order
	end

	def about
	end
end
