class CreateNhSales < ActiveRecord::Migration
  def change
    create_table :nh_sales do |t|
      t.string :from_code
      t.string :from_name
      t.string :sale_number
      t.string :confirm_date
      t.decimal :delivery_number
      t.string :to_codeto_name
      t.string :depart_code
      t.string :depart_name
      t.string :supply_type
      t.integer :order_no
      t.string :product_code
      t.string :product_name
      t.string :product_size
      t.decimal :product_tax
      t.decimal :purchase_unit_price
      t.integer :purchase_amount
      t.decimal :supply_price
      t.decimal :purchase_tax
      t.decimal :purchase_price
      t.decimal :commission
      t.decimal :commission_tax

      t.timestamps null: false
    end
  end
end
