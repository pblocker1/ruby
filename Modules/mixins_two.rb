module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class Cornermart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase('Atlas Shrugged')

quickstop = Cornermart.new
p quickstop.purchase('Slim Jim')