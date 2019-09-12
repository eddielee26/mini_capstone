class Supplier < ApplicationRecord

  has_many :products
  # assumptions
# a model called product exists
# the products table has the supplier_id foreign key
# returns an array of instances of the product class

  # def products
  #   # return an ARRAY (collection) of products that belong to THIS supplier
  #   Product.where(supplier_id: id)
  # end
end
