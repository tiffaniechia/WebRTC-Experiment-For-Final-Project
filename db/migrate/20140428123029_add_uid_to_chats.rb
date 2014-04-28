class AddUidToChats < ActiveRecord::Migration
  def change
    add_column :chats, :uid, :string
  end
end
