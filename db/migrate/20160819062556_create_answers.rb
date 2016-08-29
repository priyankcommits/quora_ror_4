class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.boolean :isactive
      t.boolean :isspam
      t.string :image_url
      t.timestamps
    end
  end
end
