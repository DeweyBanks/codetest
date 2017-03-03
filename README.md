Here is your task:

We'd like you to create a rails app. We're not looking for a fully
baked app but more of a sketch. And we'd like you to focus on the
models you create and their associations to each other. And of course
the specs, which will be the first thing we look at. You definitely
don't need to create any views. We'd rather something concise.

The app will deal with shipments, warehouses, products, and inventory.
A shipment is a representation of a set of products that need to be
shipped somewhere. A warehouse is a facility that can store inventory
and maintain a list of shipments that it will be responsible for fulfilling.



How should shipments relate to products and warehouses? How should warehouses
relate to products? Feel free to create any other models that are useful to you
in mocking this up.



Try writing some specs around assigning shipments to warehouses based on inventory,
so that a shipment that contains product X gets assigned to ship out of a warehouse
that has inventory of product X rather than another warehouse that does not have any X.


*************

To see my solution checkout out the "Solution" branch
