json.array!(@service_lists) do |service_list|
  json.extract! service_list, :id
  json.url service_list_url(service_list, format: :json)
end
