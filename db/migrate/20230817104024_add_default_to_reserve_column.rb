class AddDefaultToReserveColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :reserve, :boolean, default: false
  end
end
