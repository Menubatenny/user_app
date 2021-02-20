json.extract! product, :id, :order_items, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
