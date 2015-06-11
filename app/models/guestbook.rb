class Guestbook < ActiveRecord::Base
	
	self.per_page = 6
	def approved?
		approved_at.present?
	end

end
