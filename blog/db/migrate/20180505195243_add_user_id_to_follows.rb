class AddUserIdToFollows < ActiveRecord::Migration[5.0]
  def change
    remove_column :follows, :user
    add_column :follows, :user_id, :integer
  end
end
