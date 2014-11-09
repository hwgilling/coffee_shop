json.array!(@payments) do |payment|
  json.extract! payment, :id, :type, :authorize
  json.url payment_url(payment, format: :json)
end
