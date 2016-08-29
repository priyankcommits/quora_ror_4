class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :type
      t.boolean :read
      t.timestamps
    end
  end
end
