json.extract! sale, :id, :date, :user_id, :product_id, :amount, :created_at, :updated_at
json.url sale_url(sale, format: :json)
