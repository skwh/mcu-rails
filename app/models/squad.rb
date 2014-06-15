class Squad < ActiveRecord::Base
	has_many :fireteams
	def full_name
		"#{name} Squad"
	end
end
