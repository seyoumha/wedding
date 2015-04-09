class GuestbooksController < ApplicationController
	def index
		@guestbooks = Guestbook.all
	end
	def show
	end

	def new
		@guestbook = Guestbook.new
	end

	def create
		@guestbook = Guestbook.new(guestbook_params)
		@guestbook.save
		redirect_to new_guestbook_path
	end


end
private

	def guestbook_params
		params.require(:guestbook).permit(:name, :message)
	end