class AddUpvotesToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :upvotes, :integer
  end
end
