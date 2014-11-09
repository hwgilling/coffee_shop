json.array!(@drink_items) do |drink_item|
  json.extract! drink_item, :id, :order_id, :name, :size, :extra_shot, :milk, :addins, :iced, :cost
  json.url drink_item_url(drink_item, format: :json)
end
