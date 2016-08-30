class AddNotificationTypeToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :not_type, :string
  end
end
