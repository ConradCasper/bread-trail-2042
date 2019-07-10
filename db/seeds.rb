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
    cost: 20,
    store_id: store.id,
    location: "Majestic's Dinner on Ponce"
)

first_aid = Item.create(
    name: "first-aid kit",
    cost: 200,
    store_id: store.id,
    location: "Grady Hospital"
)

machete = Item.create(
    name: "machete",
    cost: 60,
    store_id: store.id,
    location: "Home Depot on Ponce"
)

ham_sandwich = Item.create(
    name: "Ham Sandwich",
    cost: 30,
    store_id: store.id,
    location: "Publix off Piedmont"
)

penicillin = Item.create(
    name: "penicillin",
    cost: 100,
    store_id: store.id,
    location: "CVS"
)

shotgun = Item.create(
    name: "shotgun",
    cost: 80,
    store_id: store.id,
    location: "Wal-Mart on Howell Mill"
)

 beef_jerky = Item.create(
    name: "beef jerky",
    cost: 10,
    store_id: store.id,
    location: "gas stations"
 )

beer = Item.create(
    name: "lager beer",
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