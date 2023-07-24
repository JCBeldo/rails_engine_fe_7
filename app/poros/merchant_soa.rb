class MerchantSoa
  attr_reader :name
  def initialize(data)
    @name = data[:data]
  end
end
