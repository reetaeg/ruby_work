json.extract! product, :id, :name, :code, :type, :created_at, :updated_at
json.url product_url(product, format: :json)