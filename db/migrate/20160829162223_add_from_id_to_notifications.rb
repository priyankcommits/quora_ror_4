class AddFromIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :from_id, :string
  end
end
