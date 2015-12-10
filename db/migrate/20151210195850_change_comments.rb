class ChangeComments < ActiveRecord::Migration
  def self.up
     add_column :comments, :topic_id, :integer
   end

   def self.down
     remove_column :comments, :book_id
   end
end
