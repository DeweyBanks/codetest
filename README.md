This is my solution to the problem.  I would love any feedback you have. Please leave your feedback by creating an issue for this repo.


*************


Stock Tracker is used for creating and keeping track of inventory.
For visualization purposes it utilizes Rails Admin which is mounted on the root path.
To demonstrate the app, start the server and point your browser to localhost:3000/
From here you can create orders, products, and warehouses. You can also monitor the creation
of shipments as orders are made.

Stock Tracker works by bundling a list of products into an inventory and assigning that
inventory to a warehouse. An order can be created by selecting a product. This will trigger
the creation of a shipment from the appropiate warehouse.

Stock Tracker App setup:
1. Download files
2. Run `$ bundle install` to install all gems
3. Run `$ rake db:create db:migrate db:seed` to make sure database
is setup and seeded properly
4. Start the rails server or run specs

To Run Specs
1. Run `$ rake db:create db:migrate db:seed RAILS_ENV=test`
2. Run `$ rspec spec --format d`
