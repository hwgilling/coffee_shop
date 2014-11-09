json.array!(@orders) do |order|
  json.extract! order, :id, :item_total, :tax, :total
  json.url order_url(order, format: :json)
end
