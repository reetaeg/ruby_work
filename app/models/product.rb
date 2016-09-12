class Product < ActiveRecord::Base
  require 'csv'


  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Product.create! row.to_hash
    end
  end
end
