module ApplicationHelper
	def title_helper(title)
		base_title = "19th MCU"
		if title.empty?
			base_title
		else
			"#{base_title}- #{title}"
		end
	end

	def check_login_status
		if !user_signed_in?
			flash[:error] = "You do not have access to this page."
			redirect_to main_app.root_url
			false
		else
			true
		end
	end

	def check_admin_status
		if check_login_status
			unless current_user.admin?
				flash[:error] = "You must be an admin to access this page."
				redirect_to main_app.root_url
			end
		end
	end
end
