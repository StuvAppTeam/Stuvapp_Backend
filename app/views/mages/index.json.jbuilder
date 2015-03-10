json.array!(@mages) do |mage|
  json.extract! mage, :id, :title, :path
  json.url mage_url(mage, format: :json)
end
