class RailsEngineService
  def merchants_url
    get_url("http://localhost:3000/api/v1/merchants")
  end
  
  def merchants_items_url
    get_url("http://localhost:3000/api/v1/merchants/1/items")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
