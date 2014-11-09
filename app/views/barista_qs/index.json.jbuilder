json.array!(@barista_qs) do |barista_q|
  json.extract! barista_q, :id
  json.url barista_q_url(barista_q, format: :json)
end
