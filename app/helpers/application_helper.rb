module ApplicationHelper
	def title_helper(title)
		base_title = "19th MCU"
		if title.empty?
			base_title
		else
			"#{base_title}- #{title}"
		end
	end

	def check_login_status #for redirecting before access to user pages
		if !user_signed_in?
			flash[:error] = "You do not have access to this page."
			redirect_to main_app.root_url
			false
		else
			true
		end
	end

	def check_admin_status #for redirecting before access to admin pages
		if check_login_status
			unless current_user.admin?
				flash[:error] = "You must be an admin to access this page."
				redirect_to main_app.root_url
			end
		end
	end

	def bool_user?
		user_signed_in?
	end

	def bool_admin?
		current_user.admin?
	end

	def bool_au? #syntactic sugar for checking admin
		bool_user? and bool_admin?
	end

end
