class UserController < ApplicationController

	def show
		@user = User.where(params[:id])
	end

	def index
		@users = User.all
	end

end
