class HomesController < ApplicationController
	def top
	   @styilings = Styiling.all.page(params[:page]).per(12).reverse_order
	end

	def top_info
	   @styilings = Styiling.all.page(params[:page]).per(12).reverse_order
	end

	def about
	end
end
