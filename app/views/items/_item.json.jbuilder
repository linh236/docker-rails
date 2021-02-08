json.extract! item, :id, :name, :old_cost, :new_cost, :unit, :created_at, :updated_at
json.url item_url(item, format: :json)
