# README - Shopping cart (WIP)

The application is a basic API to create new products and categories and 
handle customers to place orders online. 

** Configuration ** Make sure to run the db/seed file and migration before using the app

1. The homepage (localhost:/3000) takes you to the "My Store" page which 
displays the available products for that store along with the current customer details 

2. I assume that this is website will be used by the store owner to add/remove 
any inventory from his store. You can add various Products which map to a
Category that you can select when creating the new products.
 
3. Currently I have hardcoded some default values in the db/seed file along with a single customer. 
Running the seed file, will populate some products and categories with default values.

4. Initially there wont be any items in the order page, but you can add items by clicking the 
"Add to order" link you can add particular items to the order. The default quantity is set to 1 
for now and it is not updated even when you set it to a higher value. 

Future work/ To-Do list:

* Add customers dynamically and track the order for each customer
* Make UI more cleaner by adding CSS styling
* Functional updates on the order page, to reflect the quantity and show the total amount on page
* Deploy the code on Heroku to make it accessible   