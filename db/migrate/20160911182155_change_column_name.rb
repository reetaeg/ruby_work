class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :type, :p_type
  end
end
