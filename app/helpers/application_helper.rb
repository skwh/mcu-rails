module ApplicationHelper
	def title_helper(title)
		base_title = "19th MCU"
		if title.empty?
			base_title
		else
			"#{base_title}- #{title}"
		end
	end
end
