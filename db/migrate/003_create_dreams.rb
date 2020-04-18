class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.string :description
      t.string :duration
      t.datetime :date 
      t.datetime :time
      t.string :user_id
      t.timestamps
    end
  end
end