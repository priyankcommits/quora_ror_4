class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.boolean :isactive
      t.boolean :ispam
      t.timestamps
    end
  end
end
