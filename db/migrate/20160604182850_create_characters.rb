class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :name

      t.timestamps null: false
    end
  end
end
