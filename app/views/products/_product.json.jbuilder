json.extract! product, :id, :name, :brand_name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
