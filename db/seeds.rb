puts 'Destroying all databases...'

OrderItem.destroy_all
Order.destroy_all
ToDo.destroy_all
ToDoTemplate.destroy_all
PlantedVeggy.destroy_all
VeggyToDo.destroy_all
Veggy.destroy_all
Planter.destroy_all
User.destroy_all

puts "Generating veggies..."

carrot = Veggy.new(
  name: "Carrot",
  sun_need: "Part sun",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-06-21",
  growing_time: 90,
  price_cents: 730,
  thining_delay: 20,
  watering_period: 5,
  description: "Carrots are rich in vitamin A, C, K, iron and magnesium. Like other vegetables, carrots are also rich in dietary fibers. Having a carrot rich diet could enhance the immune system and also reduce the symptoms of premature aging.",
  season: "Spring"
  )

file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-23624_1200x1200-carotte-rothild-ab.net.jpg')
carrot.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
carrot.save!

radish = Veggy.new(
  name: "Radish",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 35,
  price_cents: 900,
  thining_delay: 16,
  watering_period: 4,
  description: "Radishes are rich in vitamin A, C, K, iron and magnesium. Like other vegetables, carrots are also rich in dietary fibers. Having a carrot rich diet could enhance the immune system and also reduce the symptoms of premature aging.",
  season: "Spring"
  )

file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-25593_1200x1200-radis-national-2-ab.net.jpg')
radish.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
radish.save!

arugula = Veggy.new(
  name: "Arugula",
  sun_need: "Full shade",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 60,
  price_cents: 450,
  thining_delay: 10,
  watering_period: 3,
  description: "Arugula is known for its smooth and loosely bunched leaves. It is rich in essential nutrients and can add a great nutritional value to salads and sandwiches.",
  season: "Summer"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-4324_1200x1200-roquette-cultivee-ab.net.jpg')
arugula.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
arugula.save!

onion = Veggy.new(
  name: "Onion",
  sun_need: "Full sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 300,
  thining_delay: 0,
  watering_period: 3,
  description: "They are rich in in anti-bacterial and anti-fungal properties. They contain vitamin C and phytochemicals which help in improving the overall immunity.",
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-23155_1200x1200-oignon-jaune-stuttgart-ab.net.jpg')
onion.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
onion.save!

puts "25%..."

garlic = Veggy.new(
  name: "Garlic",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-10-22",
  planting_end_date: "2020-04-21",
  growing_time: 150,
  price_cents: 500,
  thining_delay: 0,
  watering_period: 4,
  description: "Garlic is widely known for its antibacterial, antibiotic and possibly antiviral properties, and contains vitamins A and C, calcium, iron, phosphorus, sodium and copper.",
  season: "Fall"
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-17823_1200x1200-ail-blanc-messidrome-nt.net.jpg')
garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
garlic.save!

bears_garlic = Veggy.new(
  name: "Bear's Garlic",
  sun_need: "Full shade",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-06-22",
  planting_end_date: "2020-07-21",
  growing_time: 365,
  price_cents: 850,
  thining_delay: 0,
  watering_period: 2,
  description: "Bear's garlic is widely known for its antibacterial, antibiotic and possibly antiviral properties, and contains vitamins A and C, calcium, iron, phosphorus, sodium and copper.",
  season: "Summer"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-23147_1200x1200-ail-des-ours-plant.net.jpg')
bears_garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
bears_garlic.save!

snow_pea = Veggy.new(
  name: "Snow Pea",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-09-22",
  planting_end_date: "2019-11-21",
  growing_time: 150,
  price_cents: 330,
  thining_delay: 0,
  watering_period: 2,
  description: "Snow peas are packed with vitamin A, vitamin C, iron, potassium and dietary fibers that could possibly keep the issue of constipation at bay.",
  season: "Fall"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-26015_1200x1200-pois-a-rames-caroubel-mangetout-nt.net.jpg')
snow_pea.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
snow_pea.save!

tomato = Veggy.new(
  name: "Tomato",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 600,
  thining_delay: 20,
  watering_period: 2,
  description: "Tomato has been widely used across the globe as one of the major ingredients in food. It is known to be one of the best sources to provide with maximum amount of vitamin C.",
  season: "Spring"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-24854_1200x1200-tomate-saint-pierre-ab.net.jpg')
tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
tomato.save!

puts "50%..."

cherry_tomato = Veggy.new(
  name: "Cherry Tomato",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 150,
  price_cents: 500,
  thining_delay: 0,
  watering_period: 3,
  description: "Cherry tomatoes contain plenty of fiber, as well as vitamins and lycopene, an antioxidant that lowers your risk of certain diseases.",
  season: "Spring"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-22509_1200x1200-tomate-cerise-ab.net.jpg')
cherry_tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cherry_tomato.save!

zuchini = Veggy.new(
  name: "Zucchini",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-05-21",
  growing_time: 90,
  price_cents: 700,
  thining_delay: 0,
  watering_period: 3,
  description: "Also known as courgette, this veggie is widely cultivated in America. Though zucchini is a fruit, but it is often cooked as a vegetable and provides us with essential vitamins and nutrients.",
  season: "Spring"
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-24838_1200x1200-courgette-verte-de-milan-ab.net.jpg')
zuchini.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
zuchini.save!


sun_root = Veggy.new(
  name: "Sun Root",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-01-22",
  planting_end_date: "2020-04-21",
  growing_time: 240,
  price_cents: 450,
  thining_delay: 0,
  watering_period: 5,
  description: 'This root vegetable is starchy, just like potatoes. They are rich in non-digestive inulin which helps keep the bowel movement healthy.',
  season: "Winter"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-18782_1200x1200-topinambour-patate-ab.net.jpg')
sun_root.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
sun_root.save!

cucumber = Veggy.new(
  name: "Cucumber",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 550,
  thining_delay: 0,
  watering_period: 3,
  description: 'Cucumber is a widely cultivated plant in the gourd family, Cucurbitaceae.',
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-24345_1200x1200-concombre-jieyangdiaogua-ab.net.jpg')
cucumber.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cucumber.save!

puts "75%..."

squash = Veggy.new(
  name: "Squash",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-06-21",
  growing_time: 240,
  thining_delay: 0,
  price_cents: 650,
  watering_period: 5,
  description: 'The fruits of the genus Cucurbita are good sources of nutrients, such as vitamin A and vitamin C, among other nutrients.',
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-25540_1200x1200-potiron-courge-du-perou-ab.net.jpg')
squash.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
squash.save!

pepper = Veggy.new(
  name: "Cayenne Pepper",
  sun_need: "Full sun",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-01-22",
  planting_end_date: "2020-03-21",
  growing_time: 150,
  price_cents: 840,
  thining_delay: 0,
  watering_period: 4,
  description: 'The cayenne pepper is a type of Capsicum annuum. It is usually a moderately hot chili pepper used to flavor dishes.',
  season: "Winter"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-6394_1200x1200-piment-de-cayenne-ab.net.jpg')
pepper.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
pepper.save!

rosemary = Veggy.new(
  name: "Rosemary",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-04-22",
  planting_end_date: "2020-06-21",
  growing_time: 240,
  price_cents: 560,
  thining_delay: 0,
  watering_period: 5,
  description: 'Salvia rosmarinus, commonly known as rosemary, is a woody, perennial herb with fragrant, evergreen, needle-like leaves and white, pink, purple, or blue flowers, native to the Mediterranean region.',
  season: "Spring"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-23132_1200x1200-romarin-ab.net.jpg')
rosemary.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
rosemary.save!

basil = Veggy.new(
  name: "Genovese basil",
  sun_need: "Full sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-04-22",
  planting_end_date: "2020-06-21",
  growing_time: 200,
  price_cents: 280,
  thining_delay: 0,
  watering_period: 2,
  description: 'Genovese basil is a cultivar of Ocimum basilicum. It is one of the most popular basils for culinary use, particularly for its use in pesto, the traditional Genoese sauce.',
  season: "Spring"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-24862_1200x1200-basilic-genovese-ab.net.jpg')
basil.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
basil.save!

# puts "generated 11 veggies"

# salad = Veggy.create!(
#   name: "salad",
#   sun_need: "nord-ouest",
#   planting_start_date: "2019-12-15",
#   planting_end_date: "2020-02-10",
#   growing_time: 100
#   )

# tomato = Veggy.create!(
#   name: "tomato",
#   sun_need: "sud",
#   planting_start_date: "2019-11-26",
#   planting_end_date: "2020-01-18",
#   growing_time: 300
#   )

# jean = User.create!(
#   email: 'jean@yup.com',
#   password: '123456',
#   first_name: "Jean"
#   )

puts "Generating 1 user: Paul..."

paul = User.create!(
  email: 'paul@gmail.com',
  password: '123456',
  first_name: "Paul"
  )

puts "Generating 3 planters"


paul_pot = Planter.create!(
  name: 'Bedroom Pot',
  user: paul,
  size: "Pot",
  sun: "Full shadow",
  color: "#ff6978"
  )

paul_jardinere1 = Planter.create!(
  name: 'Kitchen Planter',
  user: paul,
  size: "Small planter",
  sun: "Full sun",
  color: "#b1ede8"
  )
paul_jardinere2 = Planter.create!(
  name: 'Living Room Planter',
  user: paul,
  size: "Large planter",
  sun: "Part sun",
  color: "#ffe1a8"
  )

puts "Generating planted veggies..."

planted_carrot = PlantedVeggy.create!(
  veggy: carrot,
  planter: paul_jardinere1
  )

planted_radish = PlantedVeggy.create!(
  veggy: radish,
  planter: paul_jardinere1
  )

planted_garlic = PlantedVeggy.create!(
  veggy: garlic,
  planter: paul_jardinere1
  )

planted_tomato = PlantedVeggy.create!(
  veggy: tomato,
  planter: paul_pot
  )

planted_radish.planting_day = Date.today - 35
planted_radish.status = true
planted_radish.save

planted_garlic.planting_day = Date.today - 35
planted_garlic.status = true
planted_garlic.save

planted_tomato.planting_day = Date.today - 35
planted_tomato.status = true
planted_tomato.save

# planted_salad = PlantedVeggy.new
# planted_salad.veggy_id = salad
# planted_salad.planter_id = jean_jardinere
# planted_salad.save!

# planted_salad2 = PlantedVeggy.new
# planted_salad2.veggy_id = salad
# planted_salad2.planter_id = jean_jardinere2
# planted_salad2.save!
# puts "generating todo templates"


# watering = ToDoTemplate.create!(
#   name: 'watering',
#   description: "it's time to water your plant"
# )

# thining = ToDoTemplate.create!(
#   name: 'thining',
#   description: "it's time to thin your plant"
# )

# tomato_to_do = VeggyToDo.new
# tomato_to_do.veggy_id = tomato
# tomato_to_do.to_do_template = thining
# tomato_to_do.save!

# salad_to_do = VeggyToDo.new
# salad_to_do.veggy_id = salad
# salad_to_do.to_do_template = watering
# salad_to_do.save!

puts "Generating veggy-todos..."

watering = ToDoTemplate.new(name: 'Water  💦', description: "your radish")
watering.save!
watering_tomato = ToDoTemplate.new(name: 'Water  💦', description: "your tomatoes")
watering_tomato.save!
say_hi = ToDoTemplate.new(name: 'Say hi 👋', description: "to your favorite garlic")
say_hi.save!
give_love = ToDoTemplate.new(name: 'Give love ❤️', description: "to your garlic")
give_love.save!
food_time = ToDoTemplate.new(name: 'Harvest 🍴', description: "your radish!")
food_time.save!
thining = ToDoTemplate.new(name: 'Thin ✂️', description: "your tomatoes")
thining.save!


eat_event = Date.today
eat_radish = ToDo.create(planted_veggy: planted_radish, to_do_template: food_time, due_at: eat_event.strftime("%Y-%m-%d"))
eat_radish.save

water_garlic0 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today - 3).strftime("%Y-%m-%d"))
water_garlic0.save

water_garlic1 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today + 1).strftime("%Y-%m-%d"))
water_garlic1.save

water_garlic2 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today + 5).strftime("%Y-%m-%d"))
water_garlic2.save

water_garlic3 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today + 9).strftime("%Y-%m-%d"))
water_garlic3.save

water_garlic4 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today + 13).strftime("%Y-%m-%d"))
water_garlic4.save

water_garlic5 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering, due_at: (Date.today + 17).strftime("%Y-%m-%d"))
water_garlic5.save


water_tomato0 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today - 3).strftime("%Y-%m-%d"))
water_tomato0.save

water_tomato1 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 1).strftime("%Y-%m-%d"))
water_tomato1.save

water_tomato2 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 4).strftime("%Y-%m-%d"))
water_tomato2.save

water_tomato3 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 7).strftime("%Y-%m-%d"))
water_tomato3.save

water_tomato4 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 10).strftime("%Y-%m-%d"))
water_tomato4.save

water_tomato5 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 13).strftime("%Y-%m-%d"))
water_tomato5.save

water_tomato6 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 16).strftime("%Y-%m-%d"))
water_tomato6.save

water_tomato7 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 19).strftime("%Y-%m-%d"))
water_tomato7.save

water_tomato8 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 22).strftime("%Y-%m-%d"))
water_tomato8.save

water_tomato9 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 25).strftime("%Y-%m-%d"))
water_tomato9.save

water_tomato10 = ToDo.create(planted_veggy: planted_tomato, to_do_template: watering_tomato, due_at: (Date.today + 28).strftime("%Y-%m-%d"))
water_tomato10.save

thin_tomato = ToDo.create(planted_veggy: planted_tomato, to_do_template: thining, due_at: (Date.today + 2 ).strftime("%Y-%m-%d"))


# VeggyToDo.create!(
#   veggy: carrot,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: carrot,
#   to_do_template: thining
# )

# VeggyToDo.create!(
#   veggy: argula,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: argula,
#   to_do_template: thining
# )

# VeggyToDo.create!(
#   veggy: radish,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: radish,
#   to_do_template: thining
# )

# VeggyToDo.create!(
#   veggy: onion,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: garlic,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: bears_garlic,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: snow_pea,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: snow_pea,
#   to_do_template: thining
# )

# VeggyToDo.create!(
#   veggy: tomato,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: tomato,
#   to_do_template: thining
# )

# VeggyToDo.create!(
#   veggy: cherry_tomato,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: zuchini,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: sun_root,
#   to_do_template: watering
# )


puts "Generating all the things..."

# action1 = ToDo.new
# action1.due_at = '2019-11-26'
# action1.planted_veggy_id = planted_tomato
# action1.to_do_template_id =

puts "Finished!"
