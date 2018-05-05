class ModFollowAgain < ActiveRecord::Migration[5.0]
  def change
    remove_column :follows, :follower
    add_column :follows, :user_id, :integer
  end
end
