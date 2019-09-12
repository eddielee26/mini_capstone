class Image < ApplicationRecord

  belongs_to :product
  # def product
  #   # returns product hash that this image belongs to
  #   Product.find_by(id: product_id)
  # end
end
