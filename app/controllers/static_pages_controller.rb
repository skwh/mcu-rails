class StaticPagesController < ApplicationController
	include ApplicationHelper
	before_action :check_admin_status, only: [:admin]

	def home
		@news = News.all
		@events = Event.all
	end

	def about
	end

	def handbook
	end

	def media
	end

	def admin
		@users = User.all
		@news = News.all
		@events = Event.all
	end
end
