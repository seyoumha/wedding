module GuestbooksHelper
	def pretify(datetime)
		datetime.strftime('%b %e, %Y') if datetime
	end
end
