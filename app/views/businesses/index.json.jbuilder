json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :summary, :tagLine, :hoursOfOpperation, :serviceValidTil, :domain
  json.url business_url(business, format: :json)
end
