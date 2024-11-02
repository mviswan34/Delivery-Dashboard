json.extract! order, :id, :dish_name, :delivery_address, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
