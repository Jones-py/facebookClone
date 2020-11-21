class AddTimestampsToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :created_at, :datetime
    add_column :chats, :updated_at, :datetime
  end
end
