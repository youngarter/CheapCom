class Sellerreview < ApplicationRecord
  belongs_to :seller
  belongs_to :client
end
