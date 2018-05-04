class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :tweeet_id
      t.integer :people_liking_tweeet

      t.timestamps
    end
  end
end
