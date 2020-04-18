class CreateHopes < ActiveRecord::Migration[6.0]
  def change
    create_table :hopes do |t|
      t.string :title
      t.integer :category_id
      t.string :description
      t.datetime :date
      t.integer :user_id
      t.timestamps
    end
  end
end