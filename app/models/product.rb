class Product < ApplicationRecord
  belongs_to :producttype
  belongs_to :seller
end
