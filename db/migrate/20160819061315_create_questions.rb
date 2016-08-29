class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.boolean :isactive
      t.boolean :isspam
      t.string :image_url
      t.timestamps
    end
  end
end
