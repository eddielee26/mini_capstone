class Product < ApplicationRecord

  # validates :name, :price, presence: true
  # validates :name, uniqueness: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }

  belongs_to :supplier
  # assumptions: 
  # product table has supplier_id foreign key
  # a model called supplier exists
  # returns a single instance (hash) of the supplier class

  # def supplier
  #   # return the supplier that THIS (self) product belongs to
  #   Supplier.find_by(id: supplier_id) 
  #   #returns a single supplier hash whos id matches THIS product's supplier_id
  # end

  has_many :images
  # def image
  #   # return an ARRAY of images taht are associated with this product
  #   Image.where(product_id: id)
  # end
  has_many :orders

  has_many :product_categories
  has_many :categories, through: :product_categories

  def category_names
    categories.map { |category| category.name }
  end

  def is_discounted?
    price <= 10 # ? in method
    # if price < 2
    #   true
    # else
    #   false
    # end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
