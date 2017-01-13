# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


warehouses = Warehouse.create([{ name: 'PORTLAND'}, { name: 'CHICAGO'}, {name: 'NEW YORK'}])

inventories = Inventory.create([
  { warehouse_id: warehouses[0].id },
  { warehouse_id: warehouses[1].id },
  { warehouse_id: warehouses[2].id },
])
products = Product.create([{ name: 'tablet', inventory_id: inventories[0].id}, { name: 'car', inventory_id: inventories[1].id}, {name: 'phone', inventory_id: inventories[1].id}, {name: 'radio', inventory_id: inventories[0].id}, {name: 'computer', inventory_id: inventories[2].id}, {name: 'television', inventory_id: inventories[2].id}])
