json.extract! item, :id, :name, :description, :price, :availability, :created_at, :updated_at
json.url item_url(item, format: :json)
