class AddToIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :to_id, :string
  end
end
