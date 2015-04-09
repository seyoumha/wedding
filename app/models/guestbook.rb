class Guestbook < ActiveRecord::Base
	

	def approved?
		approved_at.present?
	end

end
