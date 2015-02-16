json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :geographicalRegion, :country, :postal_code, :business_id, :latitude, :longitude
  json.url address_url(address, format: :json)
end
