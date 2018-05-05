class ModFollowAgainAgain < ActiveRecord::Migration[5.0]
  def change
    remove_column :follows, :user_id
    add_column :follows, :user, :integer
  end
end
