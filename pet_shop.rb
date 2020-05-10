# Objective 001

# def test_pet_shop_name
#   name = pet_shop_name(@pet_shop)
#   assert_equal("Camelot of Pets", name)
# end

def pet_shop_name(name)
  return name[:name]
end

# Objective 002

# def test_total_cash
#   sum = total_cash(@pet_shop)
#   assert_equal(1000, sum)
# end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# Objective 003

# def test_add_or_remove_cash__add
#   add_or_remove_cash(@pet_shop,10)
#   cash = total_cash(@pet_shop)
#   assert_equal(1010, cash)
# end

def add_or_remove_cash(shop_total, amount)
  shop_total[:admin][:total_cash] -= amount
end
# Objective 004

# def test_add_or_remove_cash__remove
#   add_or_remove_cash(@pet_shop,-10)
#   cash = total_cash(@pet_shop)
#   assert_equal(990, cash)
# end

def add_or_remove_cash(shop_total, amount)
  shop_total[:admin][:total_cash] += amount
end

# Objective 005

# def test_pets_sold
#   sold = pets_sold(@pet_shop)
#   assert_equal(0, sold)
# end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# Objective 006

# def test_increase_pets_sold
#   increase_pets_sold(@pet_shop,2)
#   sold = pets_sold(@pet_shop)
#   assert_equal(2, sold)
# end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += sold
end

# Objective 007

# def test_stock_count
#   count = stock_count(@pet_shop)
#   assert_equal(6, count)
# end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

# Objective 008

# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end

def pets_by_breed (pet_shop, breed)
  breed_of_pet = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_of_pet.push(pet[:name])
    end
  end
  return breed_of_pet
end

# Objective 009

# def test_all_pets_by_breed__not_found
#   pets = pets_by_breed(@pet_shop, "Dalmation")
#   assert_equal(0, pets.count)
# end

def pets_by_breed (pet_shop, breed)
  breed_of_pet = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_of_pet.push(pet[:name])
    end
  end
  return breed_of_pet
end

# Objective 010

# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
end

# Objective 011

# def test_find_pet_by_name__returns_nil
#   pet = find_pet_by_name(@pet_shop, "Fred")
#   assert_nil(pet)
# end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# Objective 012

# def test_remove_pet_by_name
#   remove_pet_by_name(@pet_shop, "Arthur")
#   pet = find_pet_by_name(@pet_shop,"Arthur")
#   assert_nil(pet)
# end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet.shift
    end
  end
  return pet
end

# Objective 013

# def test_add_pet_to_stock
#   add_pet_to_stock(@pet_shop, @new_pet)
#   count = stock_count(@pet_shop)
#   assert_equal(7, count)
# end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return stock_count(pet_shop)
end

# Objective 014

# def test_customer_cash
#   cash = customer_cash(@customers[0])
#   assert_equal(1000, cash)
# end

def customer_cash(customer)
  return customer[:cash]
end

# Objective 015

# def test_remove_customer_cash
#   customer = @customers[0]
#   remove_customer_cash(customer, 100)
#   assert_equal(900, customer[:cash])
# end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

# Objective 016

# def test_customer_pet_count
#   count = customer_pet_count(@customers[0])
#   assert_equal(0, count)
# end

def customer_pet_count(customer)
  customer[:pets].count
end

# Objective 017

# def test_add_pet_to_customer
#   customer = @customers[0]
#   add_pet_to_customer(customer, @new_pet)
#   assert_equal(1, customer_pet_count(customer))
# end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer_pet_count(customer)
end

# Optional Objective 001

# def test_customer_can_afford_pet__sufficient_funds
#   customer = @customers[0]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(true, can_buy_pet)
# end

# Optional Objective 002

# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end

# Optional Objective 003

# def test_customer_can_afford_pet__exact_funds
#   customer = @customers[2]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(true, can_buy_pet)
# end

# Optional Objective 004

# def test_sell_pet_to_customer__pet_found
#   customer = @customers[0]
#   pet = find_pet_by_name(@pet_shop,"Arthur")

#   sell_pet_to_customer(@pet_shop, pet, customer)

#   assert_equal(1, customer_pet_count(customer))
#   assert_equal(1, pets_sold(@pet_shop))
#   assert_equal(100, customer_cash(customer))
#   assert_equal(1900, total_cash(@pet_shop))
# end

# Optional Objective 005

# def test_sell_pet_to_customer__pet_not_found
#   customer = @customers[0]
#   pet = find_pet_by_name(@pet_shop,"Dave")

#   sell_pet_to_customer(@pet_shop, pet, customer)

#   assert_equal(0, customer_pet_count(customer))
#   assert_equal(0, pets_sold(@pet_shop))
#   assert_equal(1000, customer_cash(customer))
#   assert_equal(1000, total_cash(@pet_shop))
# end

# Optional Objective 006

# def test_sell_pet_to_customer__insufficient_funds
#   customer = @customers[1]
#   pet = find_pet_by_name(@pet_shop,"Arthur")

#   sell_pet_to_customer(@pet_shop, pet, customer)

#   assert_equal(0, customer_pet_count(customer))
#   assert_equal(0, pets_sold(@pet_shop))
#   assert_equal(50, customer_cash(customer))
#   assert_equal(1000, total_cash(@pet_shop))
# end
