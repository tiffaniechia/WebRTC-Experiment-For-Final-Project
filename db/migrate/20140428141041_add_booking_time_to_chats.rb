class AddBookingTimeToChats < ActiveRecord::Migration
  def change
    add_column :chats, :booking_time, :datetime
  end
end
