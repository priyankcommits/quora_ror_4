class RemoveNotificationsNews < ActiveRecord::Migration
  def change
    drop_table :notifications_news
  end
end
