class CreateHopes < ActiveRecord::Migration[6.0]
  def change
    create_table :hopes do |t|
      t.string :title
      t.string :description
      t.string :category
      t.belongs_to :user
      t.timestamps
    end
  end
end
