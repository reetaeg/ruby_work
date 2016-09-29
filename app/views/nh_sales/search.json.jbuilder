#encoding: utf-8
#json.array! @nh_sales, partial: 'nh_sales/nh_sale', as: :nh_sale
json.draw @draw
json.recordsTotal @total
json.recordsFiltered @total
json.data @nh_sales do |nh_sale|
	json.set! :id, nh_sale.id
	json.set! :from_code, nh_sale.from_code
	json.set! :from_name, nh_sale.from_name.force_encoding("UTF-8")
	json.set! :sale_number, nh_sale.sale_number
	json.set! :confirm_date, nh_sale.confirm_date
	json.set! :delivery_number, nh_sale.delivery_number
	json.set! :to_code, nh_sale.to_code
	json.set! :to_name, nh_sale.to_name.force_encoding("UTF-8")
	json.set! :depart_code, nh_sale.depart_code
	json.set! :depart_name, nh_sale.depart_name.force_encoding("UTF-8")
	json.set! :supply_type, nh_sale.supply_type.force_encoding("UTF-8")
	json.set! :order_no, nh_sale.order_no
	json.set! :product_code, nh_sale.product_code
	json.set! :product_name, nh_sale.product_name.force_encoding("UTF-8")
	json.set! :product_size, utf8(nh_sale.product_size)  
	json.set! :product_tax, nh_sale.product_tax
	json.set! :purchase_unit_price, nh_sale.purchase_unit_price
	json.set! :purchase_amount, nh_sale.purchase_amount
	json.set! :supply_price, nh_sale.supply_price
	json.set! :purchase_tax, nh_sale.purchase_tax
	json.set! :purchase_price, nh_sale.purchase_price
	json.set! :commission, nh_sale.commission
	json.set! :commission_tax, nh_sale.commission_tax
	json.set! :created_at, nh_sale.created_at
	json.set! :updated_at, nh_sale.updated_at
end
