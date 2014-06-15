class Platoon < ActiveRecord::Base
	has_many :squads
	def full_name
		"#{name} Platoon"
	end
end
