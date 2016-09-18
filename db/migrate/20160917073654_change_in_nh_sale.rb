class ChangeInNhSale < ActiveRecord::Migration
  def change
    rename_column :nh_sales, :to_codeto_name, :to_code
    add_column :nh_sales, :to_name, :string 
  end
end
