# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Survivor.destroy_all 

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

