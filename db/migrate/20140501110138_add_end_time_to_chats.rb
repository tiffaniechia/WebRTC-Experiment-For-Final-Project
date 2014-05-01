class AddEndTimeToChats < ActiveRecord::Migration
  def change
    add_column :chats, :end_time, :datetime
  end
end
