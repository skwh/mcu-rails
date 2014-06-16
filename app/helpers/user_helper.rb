module UserHelper
	def fireteam_form_data
		data = [["None", nil]]
		Fireteam.all.each do |f|
			data.push([f.name, f.id])
		end
		return data
	end
end
