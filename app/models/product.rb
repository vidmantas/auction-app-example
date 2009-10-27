class Product < ActiveRecord::Base
  def auction_ended?
    auction_ends_at < Time.now
  end
end
