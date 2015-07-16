class GuestbooksController < ApplicationController
	
	def index
		@admin = (params[:admin] == 'true')
		@guestbooks = Guestbook.paginate(:page => params[:page])
	end
	def show
	end

	def new
		@guestbook = Guestbook.new
	end

	def create
		@guestbook = Guestbook.new(guestbook_params)
		@guestbook.save
		flash[:notice]= 'Thank You for signing our guestbook.'
		redirect_to guestbooks_path 
	end
	def update
		@guestbook = Guestbook.find(params[:id])
		@guestbook.approved_at = Time.now.to_datetime
		@guestbook.save
		redirect_to guestbooks_path(admin: true), notice: "approved!"
	end

	def destroy
		@guestbook = Guestbook.find(params[:id])
		@guestbook.destroy
		redirect_to guestbooks_path(admin: true), notice: "Guestbook entery deleted"
	end


end
private

	def guestbook_params
		params.require(:guestbook).permit(:name, :message)
	end
	