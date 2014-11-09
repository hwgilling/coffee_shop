json.array!(@food_qs) do |food_q|
  json.extract! food_q, :id
  json.url food_q_url(food_q, format: :json)
end
