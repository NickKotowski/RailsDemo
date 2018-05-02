class ModTweeet < ActiveRecord::Migration[5.0]
  def change
    change_column :tweeets, :created_at, :datetime, null: false
    change_column :tweeets, :updated_at, :datetime, null: false
    # change_column(:table_name, :column_name, :new_field_type, options: bla, other_option: blubb)
    # {
    #   key: 'value',
    #   key: :value,
    #   'key' => :value,
    # }
  end
end
