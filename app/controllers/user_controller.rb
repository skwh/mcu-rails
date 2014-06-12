class UserController < ApplicationController

	def show
		@user = User.find_by_id(params[:id])
	end

	def index
		@admins = User.where(admin:true)
	end

end
