class CreateNotificationsNew < ActiveRecord::Migration
  def change
    create_table :notifications_news do |t|
      t.boolean :read
      t.string :not_type
      t.references :from
      t.references :to
      t.string :question_id
    end
  end
end
