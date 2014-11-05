json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :uid, :password, :email, :mobile, :payment_type, :payment_id
  json.url customer_url(customer, format: :json)
end
