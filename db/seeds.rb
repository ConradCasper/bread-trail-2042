# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Survivor.destroy_all 
Store.destroy_all 
Item.destroy_all 
Order.destroy_all 
OrderItem.destroy_all 

rog = Survivor.create(
        name: "rog",
        username: "bigrog",
        password: "icandoallthings",
        grain: 10000,
        image_url: 'survivors/01_survivor.jpg'
)

vanessa = Survivor.create(
    name: "vanessa",
    username: "bigvaness",
    password: "icandoallthings",
    grain: 10000,
    image_url: 'survivors/05_survivor.jpg'
)

blake = Survivor.create(
    name: "blake",
    username: "bigblake",
    password: "icandoallthings",
    grain: 10000,
    image_url: 'survivors/03_survivor.jpg'
)

chris = Survivor.create(
    name: "chris",
    username: "bigchris",
    password: "icandoallthings",
    grain: 10000,
    image_url: 'survivors/02_survivor.jpg'
)

adrian = Survivor.create(
    name: "adrian",
    username: "bigadrian",
    password: "icandoallthings",
    grain: 10000,
    image_url: 'survivors/04_survivor.jpg'
)
#################

store = Store.create(
)

################

order = Order.create(
survivor_id: adrian.id, 
store_id: store.id
)

#################

bread_loaf = Item.create(
    name: "white bread",
    image_url: "https://www.recipegirl.com/wp-content/uploads/2017/09/brioche-loaf-4-600x401.jpg",
    cost: 20,
    store_id: store.id,
    location: "Majestic's Dinner on Ponce"
)

first_aid = Item.create(
    name: "first-aid kit",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/91QCnvvW5YL._SX466_.jpg",
    cost: 200,
    store_id: store.id,
    location: "Grady Hospital"
)

machete = Item.create(
    name: "machete",
    image_url: "http://images.costumeideas.com/products/9311/1-1/friday-the-13th-bloody-machete.jpg",
    cost: 60,
    store_id: store.id,
    location: "Home Depot on Ponce"
)

ham_sandwich = Item.create(
    name: "Ham Sandwich",
    image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190322-ham-sandwich-horizontal-1553721016.png",
    cost: 30,
    store_id: store.id,
    location: "Publix off Piedmont"
)

penicillin = Item.create(
    name: "penicillin",
    image_url: "https://www.outlanderanatomy.com/wp-content/uploads/2018/03/D-penicillin.jpg",
    cost: 100,
    store_id: store.id,
    location: "CVS"
)

shotgun = Item.create(
    name: "shotgun",
    image_url: "https://www.sportsmans.com/medias/rock-island-m30-m5-matte-nickel-shotgun-1503756-1.jpg?context=bWFzdGVyfGltYWdlc3w3MjY5M3xpbWFnZS9qcGVnfGltYWdlcy9oYTkvaDZmLzg4Njc3NTY0NzQzOTguanBnfGVlYmZlMjkxODE3YWM5ZGI3YTA5NDBjNGNmZTI4ZmUxODJjMTE5ZGFkNzM0Njg1OWMxYjMyNzI3N2UwYzcyNTA",
    cost: 80,
    store_id: store.id,
    location: "Wal-Mart on Howell Mill"
)

 beef_jerky = Item.create(
    name: "beef jerky",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/91UHDKh3kEL._SL1500_.jpg",
    cost: 10,
    store_id: store.id,
    location: "gas stations"
 )

beer = Item.create(
    name: "lager beer",
    image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/701/beer-main-0-1496757601.jpg?resize=480:*",
    cost: 30,
    store_id: store.id,
    location: "Green's on Ponce"
 )

 #################

 order_item = OrderItem.create(
    order_id: order.id,
    item_id: beer.id
 )

 order_item2 = OrderItem.create(
    order_id: order.id,
    item_id: beef_jerky.id
 )

 order_item3 = OrderItem.create(
    order_id: order.id,
    item_id: shotgun.id
 )

 #################