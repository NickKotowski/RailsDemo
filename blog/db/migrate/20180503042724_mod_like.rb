class ModLike < ActiveRecord::Migration[5.0]
  def change
    remove_column :likes, :tweeet_id
  end
end
