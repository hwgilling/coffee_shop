json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :item_total, :tax, :total, :payment_id
  json.url order_url(order, format: :json)
end
