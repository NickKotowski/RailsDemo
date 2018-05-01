class AddLikeToTweeets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweeets, :likes, :integer
  end
end
