class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.string  :place
      t.integer :weather_id
      t.integer :prefecture_id
      t.integer :scene_id
      t.integer :price_id
      t.string  :with_who
      t.string  :comment
      t.references :user,                 null: false, foreign_key: true

      t.timestamps
    end
  end
end
