class RailsEngineFacade
  def all_merchants
    MerchantSoa.new(service.merchants_url)
  end

  def merchant_items
    MerchantSoa.new(service.merchants_items_url)
  end

  def service
    RailsEngineService.new
  end
end
