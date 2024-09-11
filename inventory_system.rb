inventory = Inventory.new
inventory.add_item("Apple", 10)
inventory.add_item("Banana", 5)
inventory.update_item("Apple", 15)
inventory.check_stock("Apple")   
inventory.check_stock("Orange")
inventory.list_items