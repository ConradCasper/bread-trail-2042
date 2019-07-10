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
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiqy-Kf_qrjAhWiVN8KHcdPCaAQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.theflavorbender.com%2Fhomemade-white-bread-recipe%2F&psig=AOvVaw0vID7V9kPuozJ15N9dbH7d&ust=1562869907441736",
    cost: 20,
    store_id: store.id,
    location: "Majestic's Dinner on Ponce"
)

first_aid = Item.create(
    name: "first-aid kit",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjlpuS3_qrjAhWhdN8KHa-xDowQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.amazon.com%2FFirst-Aid-Kit-emergency-situations%2Fdp%2FB00W4WDRRU&psig=AOvVaw3YzwV8JCgg9U9vOI-gJapi&ust=1562869951313685",
    cost: 200,
    store_id: store.id,
    location: "Grady Hospital"
)

machete = Item.create(
    name: "machete",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwig6fnT_qrjAhVLiOAKHcPzDTEQjRx6BAgBEAQ&url=http%3A%2F%2Fwww.costumeideas.com%2Ffriday-the-13th-bloody-machete.html&psig=AOvVaw2cvDQd872kx0Sb2ussVoxy&ust=1562869984821457",
    cost: 60,
    store_id: store.id,
    location: "Home Depot on Ponce"
)

ham_sandwich = Item.create(
    name: "Ham Sandwich",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiRsYPo_qrjAhXNmuAKHVZ6BNkQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.thejournal.ie%2Freadme%2Fprocessed-meats-can-be-very-bad-for-us-so-what-does-the-future-of-the-ham-sandwich-look-like-4347262-Nov2018%2F&psig=AOvVaw1g1_FKdQouaqa40JsJhH40&ust=1562870049361602",
    cost: 30,
    store_id: store.id,
    location: "Publix off Piedmont"
)

penicillin = Item.create(
    name: "penicillin",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjd0oWB_6rjAhVmh-AKHdHjDv8QjRx6BAgBEAQ&url=https%3A%2F%2Fwww.reidhealth.org%2Fblog%2Fdo-you-have-a-true-penicillin-allergy&psig=AOvVaw0oMvBJDMlDlkZRpUP0882K&ust=1562870084796365",
    cost: 100,
    store_id: store.id,
    location: "CVS"
)

shotgun = Item.create(
    name: "shotgun",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjd34GT_6rjAhXCm-AKHcp3D_wQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.botach.com%2Fbenelli-m4-tactical-shotguns%2F&psig=AOvVaw3J_u3mKbNCwvoPBXpD7sUi&ust=1562870137673346",
    cost: 80,
    store_id: store.id,
    location: "Wal-Mart on Howell Mill"
)

 beef_jerky = Item.create(
    name: "beef jerky",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiWp7S2_6rjAhWCY98KHeG_C_gQjRx6BAgBEAQ&url=https%3A%2F%2Falewels.com%2Fproduct%2Fjerky-beef%2F&psig=AOvVaw2CpOEt8KGS_be6p7xqlq47&ust=1562870181801326",
    cost: 10,
    store_id: store.id,
    location: "gas stations"
 )

beer = Item.create(
    name: "lager beer",
    image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiMlevp_6rjAhVoUN8KHRtmCFIQjRx6BAgBEAQ&url=http%3A%2F%2Fwww.pikfly.com%2FLager%2F19543-Pabst-Blue-Ribbon-Beer-12oz-Can-6-Pack%2F&psig=AOvVaw1MVeUOnpIcZWsvnHw_WYqM&ust=1562870281877981",
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