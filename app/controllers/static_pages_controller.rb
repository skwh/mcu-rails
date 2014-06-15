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

	def roster
		@platoons = Platoon.all
		@squads = Squad.all
		@fireteams = Fireteam.all
	end

	def admin
		@users = User.all
		@news = News.all
		@events = Event.all
		@platoons = Platoon.all
		@squads = Squad.all
		@fireteams = Fireteam.all
	end
end
