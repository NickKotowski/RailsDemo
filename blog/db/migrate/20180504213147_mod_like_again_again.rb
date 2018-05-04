class ModLikeAgainAgain < ActiveRecord::Migration[5.0]
  def change
    remove_column :likes, :people_liking_tweeet
    add_column :likes, :user_id, :integer
  end
end
