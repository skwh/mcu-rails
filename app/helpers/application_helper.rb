require 'yaml'
require 'open-uri'
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

	def bool_au? #syntactic sugar for checking signin and admin
		bool_user? and bool_admin?
	end

	def markdown(text) #transforms the markdown text to html
		markdown_obj = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :autolink => true, :space_after_headers => true)
		return markdown_obj.render(text)
	end

	def mod_pack_getter #retrieves the content of the modpack for no-text-updates listing
		yml_contents = open("http://173.224.120.11/repo/server.yml") { |f| f.read }
		modpack_obj = YAML.load(yml_contents)
		modpack = modpack_obj[:required_mods] + modpack_obj[:allowed_mods]
		return modpack
	end
end
