class Notifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.boolean :read
      t.string :not_type
      t.references :from
      t.references :to
      t.string :question_id

      t.timestamps
    end
  end
end
