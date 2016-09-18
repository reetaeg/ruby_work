class AddIndexInNhSale < ActiveRecord::Migration
  def change
    add_index :nh_sales, [:sale_number, :order_no], unique:true    
    add_index :nh_sales, :confirm_date
    add_index :nh_sales, :from_code
    add_index :nh_sales, :to_code
    add_index :nh_sales, :product_code
  end
end
