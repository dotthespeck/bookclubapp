class InitialModels < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :book_cover
      t.integer :list_num, null: false
      t.datetime :created_at
    end

    create_table :comments do |t|
      t.integer :book_id, null: false
      t.text :comment, null: false
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
