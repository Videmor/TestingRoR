json.array!(@webs) do |web|
  json.extract! web, :id, :name, :url, :description
  json.url web_url(web, format: :json)
end
