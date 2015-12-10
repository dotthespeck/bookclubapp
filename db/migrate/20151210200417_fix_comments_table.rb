class FixCommentsTable < ActiveRecord::Migration
  def change
    remove_column :comments, :book_id
  end
end
