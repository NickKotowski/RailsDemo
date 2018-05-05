class ModFollow < ActiveRecord::Migration[5.0]
  def change
    remove_column :follows, :follower
    remove_column :follows, :integer
    add_column :follows, :follower, :integer
  end
end
