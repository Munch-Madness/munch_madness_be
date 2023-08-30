# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

restaurant1 = Restaurant.create!(
  name: "Subway",
  photo: "https://images.app.goo.gl/wPiE6jgdiwVsNFxFA",
  price: "1",
  rating: "3.5",
)

restaurant2 = Restaurant.create!(
  name: "McDonalds",
  photo: "https://images.app.goo.gl/stPYzZjuL4r7YS2P6",
  price: "1",
  rating: "4.2",
)

restaurant3 = Restaurant.create!(
  name: "Casa Bonita",
  photo: "https://images.app.goo.gl/2EcfMZJxQrdAWbhw7",
  price: "2",
  rating: "4.7",
)

restaurant4 = Restaurant.create!(
  name: "Strange Craft Beer Company",
  photo: "https://images.app.goo.gl/NuCKXyKpG2GjDUVF9",
  price: "1",
  rating: "4.8",
)

restaurant5 = Restaurant.create!(
  name: "Olive Garden Italian Restaurant",
  photo: "https://images.app.goo.gl/FNZ2TsgT47m1G8c89",
  price: "2",
  rating: "3.4",
)

restaurant6 = Restaurant.create!(
  name: "El Tapatio Mexican Restaurant",
  photo: "https://images.app.goo.gl/JME6vshNWt8mjABf6",
  price: "2",
  rating: "4.3",
)

restaurant7 = Restaurant.create!(
  name: "Root Down",
  photo: "https://images.app.goo.gl/L9HvnGAChZqHwKs69",
  price: "2",
  rating: "4.8",
)

restaurant8 = Restaurant.create!(
  name: "Highland Tap and Burger",
  photo: "https://images.app.goo.gl/krgV67wUAwjsDizT6",
  price: "2",
  rating: "4.7",
)

restaurant9 = Restaurant.create!(
  name: "Linger",
  photo: "https://images.app.goo.gl/hx6rPtv5wdoMbgDdA",
  price: "3",
  rating: "4.5",
)

restaurant10 = Restaurant.create!(
  name: "Downtown Aquarium",
  photo: "https://images.app.goo.gl/BQVVjHC4wTWpLo4f8",
  price: "3",
  rating: "4.1",
)

restaurant11 = Restaurant.create!(
  name: "Sushi Sasa",
  photo: "https://images.app.goo.gl/VHQzj7PB4TowXEnUA",
  price: "3",
  rating: "4.3",
)

restaurant12 = Restaurant.create!(
  name: "Forest Room 5",
  photo: "https://images.app.goo.gl/T889jrDrgvJeUtdR7",
  price: "2",
  rating: "3.9",
)

restaurant13 = Restaurant.create!(
  name: "Hops & Pie",
  photo: "https://images.app.goo.gl/4farUSohCxyJnWpG6",
  price: "2",
  rating: "4.9",
)

restaurant14 = Restaurant.create!(
  name: "Texas Roadhouse",
  photo: "https://images.app.goo.gl/9wJFSfYg7WQ9WbG5A",
  price: "2",
  rating: "3.8",
)

restaurant15 = Restaurant.create!(
  name: "Williams & Graham",
  photo: "https://images.app.goo.gl/fcB7Nfa8CkZLS6jz5",
  price: "3",
  rating: "4.6",
)

restaurant16 = Restaurant.create!(
  name: "Highland Tavern",
  photo: "https://images.app.goo.gl/RpGCikgYt2uej5VE6",
  price: "2",
  rating: "4.5",
)

restaurant17 = Restaurant.create!(
  name: "duo Restaurant",
  photo: "https://images.app.goo.gl/fxeRRwZjZJAkpnRW7",
  price: "3",
  rating: "4.6",
)

restaurant18 = Restaurant.create!(
  name: "Tocabe, An American Indian Eatery",
  photo: "https://images.app.goo.gl/tgsctvMnsxP2tBVNA",
  price: "1",
  rating: "4.4",
)

restaurant19 = Restaurant.create!(
  name: "PARISI pizzeria, trattoria e vino",
  photo: "https://images.app.goo.gl/AsUz24JrunFFGyRi9",
  price: "2",
  rating: "4.7",
)

restaurant20 = Restaurant.create!(
  name: "Yak and Yeti Restaurant and Brewpub",
  photo: "https://images.app.goo.gl/DLMWAZvhyje6axjg8",
  price: "3",
  rating: "4.2",
)

restaurant21 = Restaurant.create!(
  name: "Crown Burgers",
  photo: "https://images.app.goo.gl/brHvUtTzH2wBfBq77",
  price: "2",
  rating: "4.9",
)

restaurant22 = Restaurant.create!(
  name: "Burger King",
  photo: "https://images.app.goo.gl/uCukgfzkTUesC8TMA",
  price: "1",
  rating: "3.2",
)

restaurant23 = Restaurant.create!(
  name: "Wendy's",
  photo: "https://images.app.goo.gl/3puwKqvCpXcyonA6A",
  price: "1",
  rating: "3.8",
)

restaurant24 = Restaurant.create!(
  name: "Chili's Grill & Bar",
  photo: "https://images.app.goo.gl/zEjba21APQYce4d58",
  price: "2",
  rating: "4.1",
)

restaurant25 = Restaurant.create!(
  name: "Applebee's Grill + Bar",
  photo: "https://images.app.goo.gl/2MidEF8E6FSdc4zv6",
  price: "2",
  rating: "3.4",
)

restaurant26 = Restaurant.create!(
  name: "Long John Silver's",
  photo: "https://images.app.goo.gl/SKbPxSE7GRVpr8Ts7",
  price: "1",
  rating: "2.3",
)

restaurant27 = Restaurant.create!(
  name: "Kentucky Fried Chicken",
  photo: "https://images.app.goo.gl/RFViJrhv3bJvUAk89",
  price: "1",
  rating: "2.8",
)

restaurant28 = Restaurant.create!(
  name: "Zaxby's Chicken Fingers & Buffalo Wings",
  photo: "https://images.app.goo.gl/PWZ4zQ7iufPsmS5J9",
  price: "1",
  rating: "4.3",
)

restaurant29 = Restaurant.create!(
  name: "Raising Cane's Chicken Fingers",
  photo: "https://images.app.goo.gl/fxZ1hGEbph77VFEc7",
  price: "1",
  rating: "4.2",
)

restaurant30 = Restaurant.create!(
  name: "Starbucks",
  photo: "https://images.app.goo.gl/JHVsDCWCN7aQ8MMk6",
  price: "1",
  rating: "4.6",
)

restaurant31 = Restaurant.create!(
  name: "Shake Shack",
  photo: "https://images.app.goo.gl/xnHR7e2yTT15VQ6VA",
  price: "1",
  rating: "4.7",
)

restaurant32 = Restaurant.create!(
  name: "Good Times Burgers & Frozen Custard",
  photo: "https://images.app.goo.gl/p5ndd8HH7Xg5qY618",
  price: "1",
  rating: "4.5",
)

restaurant33 = Restaurant.create!(
  name: "Taco Bell",
  photo: "https://images.app.goo.gl/HvoNbm1hgbpsMZ2X6",
  price: "1",
  rating: "3.8",
)

restaurant34 = Restaurant.create!(
  name: "Chick-fil-A",
  photo: "https://images.app.goo.gl/t2NnYJLG8Tdqervh6",
  price: "1",
  rating: "4.0",
)

restaurant35 = Restaurant.create!(
  name: "Chipotle Mexican Grill",
  photo: "https://images.app.goo.gl/njtJQBfma8UuVJtN8",
  price: "1",
  rating: "4.4",
)

restaurant36 = Restaurant.create!(
  name: "Lucy's Burger Bar",
  photo: "https://images.app.goo.gl/gq15cNKuDHXmEeWS9",
  price: "2",
  rating: "4.6",
)

restaurant37 = Restaurant.create!(
  name: "American Elm",
  photo: "https://images.app.goo.gl/C6QWgE7jgS4wRVHQA",
  price: "2",
  rating: "4.9",
)

restaurant38 = Restaurant.create!(
  name: "Post Oak Barbecue",
  photo: "https://images.app.goo.gl/yVy9BKty36nZ1che7",
  price: "2",
  rating: "4.9",
)

restaurant39 = Restaurant.create!(
  name: "Okinawa Sushi",
  photo: "https://images.app.goo.gl/mPjaoBvoGdgzuXNC8",
  price: "3",
  rating: "4.8",
)

restaurant40 = Restaurant.create!(
  name: "Ruby Tuesday",
  photo: "https://images.app.goo.gl/FVMQLbK9rikiVjYR7",
  price: "2",
  rating: "4.1",
)

restaurant41 = Restaurant.create!(
  name: "Longhorn Steakhouse",
  photo: "https://images.app.goo.gl/HtyZMex3uoDaHGhE9",
  price: "2",
  rating: "3.8",
)

restaurant42 = Restaurant.create!(
  name: "Red Lobster",
  photo: "https://images.app.goo.gl/A72HsHSHQJnkPHHd7",
  price: "2",
  rating: "3.2",
)

restaurant43 = Restaurant.create!(
  name: "TGI Fridays",
  photo: "https://images.app.goo.gl/2rx6vSUH7wnSvcjt9",
  price: "2",
  rating: "4.3",
)

restaurant44 = Restaurant.create!(
  name: "Denny's Restaurant",
  photo: "https://images.app.goo.gl/dvxsHNWCgtUj83zJ6",
  price: "2",
  rating: "2.8",
)

restaurant45 = Restaurant.create!(
  name: "IHOP",
  photo: "https://images.app.goo.gl/1JH3dNkLo3xpvPLVA",
  price: "2",
  rating: "3.9",
)

restaurant46 = Restaurant.create!(
  name: "Waffle House",
  photo: "https://images.app.goo.gl/oSUMBz84smieFFv99",
  price: "1",
  rating: "5.0",
)

restaurant47 = Restaurant.create!(
  name: "Cracker Barrel Old Country Store",
  photo: "https://images.app.goo.gl/U27ixC8oSnpZ1BAMA",
  price: "2",
  rating: "4.6",
)

restaurant48 = Restaurant.create!(
  name: "Arby's",
  photo: "https://images.app.goo.gl/Vh6QeTxfLEk8prKG9",
  price: "1",
  rating: "2.1",
)

restaurant49 = Restaurant.create!(
  name: "Carl's Jr.",
  photo: "https://images.app.goo.gl/rhukmzsrrzbr2xnCA",
  price: "1",
  rating: "2.3",
)

restaurant50 = Restaurant.create!(
  name: "Little Caesars Pizza",
  photo: "https://images.app.goo.gl/UKFcr8X5qu1A8sEw9",
  price: "1",
  rating: "3.5",
)

restaurant51 = Restaurant.create!(
  name: "Papa John's Pizza",
  photo: "https://images.app.goo.gl/ockD4XU5XqVs461A6",
  price: "2",
  rating: "4.0",
)

restaurant52 = Restaurant.create!(
  name: "Pizza Hut",
  photo: "https://images.app.goo.gl/ayoJRpoc9wL9nCzLA",
  price: "2",
  rating: "3.8",
)

restaurant53 = Restaurant.create!(
  name: "Domino's Pizza",
  photo: "https://images.app.goo.gl/tvFh8WNzUpVXNpGG7",
  price: "2",
  rating: "4.1",
)

restaurant54 = Restaurant.create!(
  name: "Brooklyn's Finest Pizza",
  photo: "https://images.app.goo.gl/adTYeizh2d9G1Fa58",
  price: "2",
  rating: "4.6",
)

restaurant55 = Restaurant.create!(
  name: "Panda Express",
  photo: "https://images.app.goo.gl/zVjnAit1UgK4kVc4A",
  price: "1",
  rating: "3.3",
)

restaurant56 = Restaurant.create!(
  name: "Bakery Four",
  photo: "https://images.app.goo.gl/ADhsaKWrfqj59M3m8",
  price: "1",
  rating: "4.9",
)

restaurant57 = Restaurant.create!(
  name: "Call Your Mother Deli",
  photo: "https://images.app.goo.gl/QihXF4DXxV6pKhWd9",
  price: "1",
  rating: "4.8",
)

restaurant58 = Restaurant.create!(
  name: "Cheba Hut Toasted Subs",
  photo: "https://images.app.goo.gl/JnE2mNCspwb2WPzz9",
  price: "1",
  rating: "4.9",
)

restaurant59 = Restaurant.create!(
  name: "Freebirds World Burrito",
  photo: "https://images.app.goo.gl/yAV9WURfJEPxLEGe6",
  price: "1",
  rating: "4.5",
)

restaurant60 = Restaurant.create!(
  name: "Burgerville",
  photo: "https://images.app.goo.gl/BHf5gTNZFyeeaspn8",
  price: "2",
  rating: "4.8",
)