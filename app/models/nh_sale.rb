class NhSale < ActiveRecord::Base
  require 'csv'


  def self.import(file)
    CSV.foreach(file.path, {headers:true, col_sep:"\t"}) do |row|
     # Product.create! row.to_hash
     tempHash = row.to_hash
     logger.info "Processing NhSale: #{tempHash}" 
     
     nhSale = NhSale.where(sale_number:tempHash["매출일-전표번호"], order_no:tempHash["전표일련번호"]).first_or_initialize

     
     nhSale.from_code=tempHash["거래처코드"]
     nhSale.from_name=tempHash["거래처명"]
     nhSale.sale_number=tempHash["매출일-전표번호"]
     nhSale.confirm_date=tempHash["검수일자"]
     nhSale.delivery_number=tempHash["지급예정일"]
     nhSale.to_code=tempHash["실매입사업장코드"]
     nhSale.to_name=tempHash["실매입사업장명"]
     nhSale.depart_code=tempHash["경제통합사업장코드"]
     nhSale.depart_name=tempHash["사업장명"]
     nhSale.supply_type=tempHash["공급유형"]
     nhSale.order_no=tempHash["전표일련번호"]
     nhSale.product_code=tempHash["경제통합상품코드"]
      
     nhSale.product_name=tempHash["상품명"]
     nhSale.product_size=tempHash["상품규격명"]
     nhSale.product_tax=tempHash["과세구분코드명"]
      
      
     nhSale.purchase_unit_price=tempHash["매입단가"]
     nhSale.purchase_amount=tempHash["매입수량"]
      
     nhSale.supply_price=tempHash["공급금액"]
      
     nhSale.purchase_tax=tempHash["매입부가세"]
     nhSale.purchase_price=tempHash["매입금액"]
     nhSale.commission=tempHash["수수료"]
     nhSale.commission_tax=tempHash["수수료부가세"]
     
     nhSale.save 


     logger.info "Processing 거래처코드 : #{nhSale.from_code}" 
     
     
    end
  end
  
end
