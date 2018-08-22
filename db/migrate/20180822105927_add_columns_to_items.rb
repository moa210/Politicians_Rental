class AddColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :available, :boolean, default: false
  end
end
