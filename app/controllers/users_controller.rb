class UsersController < ApplicationController
	def index
		@users = User.where gender:"女性"
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
	end

	def unsubscribed
	end

	def withdraw
	end
end