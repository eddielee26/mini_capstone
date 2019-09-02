class Product < ApplicationRecord

  def is_discounted?
    # price <= 10 # ? in method
    if price < 10
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
