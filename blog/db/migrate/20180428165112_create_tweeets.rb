class CreateTweeets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweeets do |t|
      t.text :tweeet
    end
  end
end
