class UserController < ApplicationController
  include ApplicationHelper
  before_action :check_admin_status, only: [:edit, :update, :destroy]

	def show
		@user = User.find_by_id(params[:id])
	end

	def index
		@users = User.excludes(:id => current_user.id)
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find_by_id(params[:id])
    respond_to do |format|
      if @user.update(user_params)
    		format.html { redirect_to admin_path, notice: "User updated successfully"}
    	else
    		format.html { render action: 'edit' }
    	end
  	end
  end

  	def destroy
  		@user = User.find_by_id(params[:id])
  		if @user.destroy
  			flash[:notice] = "Success fully deleted user"
  			redirect_to admin_path
  		end
  	end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :admin, :rank, :fireteam_id)
    end
end
