class Guestbook < ActiveRecord::Base
	
	self.per_page = 5
	def approved?
		approved_at.present?
	end

end
