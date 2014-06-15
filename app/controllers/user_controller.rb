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
		params[:user].delete(:password) if params[:user][:password].blank?
    	params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
    	if @user.update_attributes(params[:user])
    		flash[:notice] = "Successfully updated User."
    		redirect_to admin_path
    	else
    		render :action => 'edit'
    	end
  	end

  	def destroy
  		@user = User.find_by_id(params[:id])
  		if @user.destroy
  			flash[:notice] = "Success fully deleted user"
  			redirect_to admin_path
  		end
  	end

end
