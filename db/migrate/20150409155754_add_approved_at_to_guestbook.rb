class AddApprovedAtToGuestbook < ActiveRecord::Migration
  def change
    add_column :guestbooks, :approved_at, :datetime
  end
end
