class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :followee
      t.string :follower
      t.string :integer

      t.timestamps
    end
  end
end
