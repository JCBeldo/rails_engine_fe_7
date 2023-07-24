class MerchantsController < ApplicationController
 def index
  @merchants = RailsEngineFacade.new.all_merchants.name
 end

 def show
  @items = RailsEngineFacade.new.merchant_items
 end
end
