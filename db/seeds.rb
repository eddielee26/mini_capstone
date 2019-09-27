User.create!([
  {name: "eddie", email: "eddie@gmail.com", password_digest: "$2a$12$pvftiIbuf7Tbv/f2ISGkY.W4O7G6Gtj63vch5vrzdb2mSBbw29IWK", admin: true},
  {name: "jay", email: "jay@gmail.com", password_digest: "$2a$12$MMfnQhoS8sc4rpxGsCG9AOa2hiwlWi5TGM8E/Xr3/3iUZ/8tRQ99q", admin: false}
])
Category.create!([
  {name: "electronics"},
  {name: "games"}
])
Image.create!([
  {url: "https://ss7.vzw.com/is/image/VerizonWireless/palm-phone-gold?$device-lg$", product_id: 3}
])
Order.create!([
  {user_id: 1, subtotal: "500.0", tax: "45.0", total: "545.0"},
  {user_id: 1, subtotal: "1800.0", tax: "162.0", total: "1962.0"},
  {user_id: 1, subtotal: "150.0", tax: "13.5", total: "163.5"},
  {user_id: 1, subtotal: "3400.0", tax: "306.0", total: "3706.0"}
])
Supplier.create!([
  {name: "Amazon", email: "amazon@gmail.com", phone_number: "121-1212"},
  {name: "Newegg", email: "newegg@gmail.com", phone_number: "232-2323"},
  {name: "Thinkgeek", email: "thinkgeek@gmail.com", phone_number: "343-3434"}
])
Product.create!([
  {name: "laptop", price: "900.0", description: "alienware", supplier_id: 3},
  {name: "super smash bros ultimate", price: "50.0", description: "nintendo", supplier_id: 3},
  {name: "diablo 2 lord of destruction", price: "10.0", description: "best pc game ever made by blizzard. none like this exists. ", supplier_id: 2},
  {name: "phone", price: "500.0", description: "black", supplier_id: 3}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 1}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: nil, status: nil, order_id: 1},
  {user_id: 1, product_id: 2, quantity: nil, status: nil, order_id: 2},
  {user_id: 1, product_id: 3, quantity: nil, status: nil, order_id: 3},
  {user_id: 2, product_id: 1, quantity: nil, status: nil, order_id: 4},
  {user_id: 2, product_id: 2, quantity: nil, status: nil, order_id: 5},
  {user_id: 1, product_id: 1, quantity: 2, status: "purchased", order_id: 26},
  {user_id: 1, product_id: 2, quantity: 2, status: "purchased", order_id: 26},
  {user_id: 1, product_id: 3, quantity: 3, status: "purchased", order_id: 26},
  {user_id: 2, product_id: 3, quantity: nil, status: "removed", order_id: 6}
])

