class StaticPagesController < ApplicationController
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
end
