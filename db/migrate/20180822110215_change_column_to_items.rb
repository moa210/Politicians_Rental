class ChangeColumnToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :available, :boolean, default: true
  end
end
