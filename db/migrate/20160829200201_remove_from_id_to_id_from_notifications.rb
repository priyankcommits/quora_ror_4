class RemoveFromIdToIdFromNotifications < ActiveRecord::Migration
  def change
    remove_column :notifications, :from_id
    remove_column :notifications, :to_id
  end
end
