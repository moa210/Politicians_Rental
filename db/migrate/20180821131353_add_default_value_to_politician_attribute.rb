class AddDefaultValueToPoliticianAttribute < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :politician, :boolean, default: false
  end
end
