class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :book_id, null: false
      t.string :title, null: false
      t.datetime :created_at, null: false
    end
  end

  def change
    add_column :books, :status, :string
  end
end
