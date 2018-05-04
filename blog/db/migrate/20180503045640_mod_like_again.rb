class ModLikeAgain < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :tweeet_id, :integer
  end
end
