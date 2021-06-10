# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroyed old seeds"
Tag.destroy_all
Spot.destroy_all
Skater.destroy_all
puts "seeds destroyed"

puts "creating skaters"
skater1 = Skater.create!(username: "Chad", email: "chad@spotter.com", password: "secret")
skater2 = Skater.create!(username: "Tom", email: "tom@spotter.com", password: "secret")
skater3 = Skater.create!(username: "Harry", email: "harry@spotter.com", password: "secret")
skater4 = Skater.create!(username: "Alex", email: "alex@spotter.com", password: "secret")
skater5 = Skater.create!(username: "Paddy", email: "paddy@spotter.com", password: "secret")
puts "skaters created"

puts "creating spots"
spot1 = Spot.new(name: "St Pauls Steps", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Sermon Ln, London", skater: skater1,
description: "Quite bait but has some of the best stairsets in London. No stoppers either.")
file1 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623332532/skate%20images%20file/st_pauls_london_a15ui9.jpg')
spot1.photos.attach(io: file1, filename: 'st_pauls_london_a15ui9.jpg', content_type: 'jpg')
file2 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623332528/skate%20images%20file/st_pauls_london2_g4ztwe.jpg')
spot1.photos.attach(io: file2, filename: 'st_pauls_london2_g4ztwe.jpg', content_type: 'jpg')
file3 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623332528/skate%20images%20file/st_pauls_london3_z5spn7.jpg')
spot1.photos.attach(io: file3, filename: 'st_pauls_london3_z5spn7.jpg', content_type: 'jpg')
spot1.save!
spot2 = Spot.new(name: "Holborn Garden", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "13 Lincoln's Inn Fields, London", skater: skater1,
description: "Got a good area to skate in, never been stopped by anyone so pretty chill. Gets busy on weekends though.")
file4 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623332532/skate%20images%20file/st_pauls_london_a15ui9.jpg')
spot2.photos.attach(io: file4, filename: 'st_pauls_london_a15ui9.jpg', content_type: 'jpg')
file5 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623335861/skate%20images%20file/holborn_garden2_j5l8oq.jpg')
spot2.photos.attach(io: file5, filename: 'holborn_garden2_j5l8oq.jpg', content_type: 'jpg')
file6 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623335863/skate%20images%20file/holborn_garden3_u95j0r.jpg')
spot.photos.attach(io: file6, filename: 'holborn_garden3_u95j0r.jpg', content_type: 'jpg')
spot2.save!
spot3 = Spot.new(name: "Stratford Center!", stairset: false, ledge: false, cover: true, flatground: true, security: "High", location: "54A Broadway, London", skater: skater1,
description: "Solid group of skaters from 5pm, anyone from beginners to semi-pro. Nice to skate when the weather is trash.")
file7 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623336194/skate%20images%20file/stratford_center1_weqwff.jpg')
spot3.photos.attach(io: file7, filename: 'stratford_center1_weqwff.jpg', content_type: 'jpg')
file8 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623336194/skate%20images%20file/stratford_center2_xjbdok.jpg')
spot3.photos.attach(io: file8, filename: 'stratford_center2_xjbdok.jpg', content_type: 'jpg')
file9 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623336194/skate%20images%20file/stratford_center3_cnyix0.jpg')
spot3.photos.attach(io: file9, filename: 'stratford_center3_cnyix0.jpg', content_type: 'jpg')
spot3.save!
spot4 = Spot.new(name: "Nice location - Ardwick", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Adrwick, Manchester", skater: skater2,
description: "Sweet place to mess around with flip tricks if you're looking for a quite place.")
file10 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337037/skate%20images%20file/ardwick_manchester_vzzfxt.jpg')
spot4.photos.attach(io: file10, filename: 'ardwick_manchester_vzzfxt.jpg', content_type: 'jpg')
spot4.save!
spot5 = Spot.new(name: "Annes Sq", stairset: false, ledge: true, cover: false, flatground: true, security: "High", location: "St Anns Square, Manchester", skater: skater2,
description: "Perfect spot for almost everything; long ledges, no cobbles. Be careful with security though; absolute jokers!")
file11 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337039/skate%20images%20file/annes_sq_manchester_sovmef.jpg')
spot5.photos.attach(io: file11, filename: 'annes_sq_manchester_sovmef.jpg', content_type: 'jpg')
spot5.save!
spot6 = Spot.new(name: "Triangle Gardens", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Fennel St, Manchester", skater: skater2,
description: "Nice stair stack to mess around with, good flatground. Perfect on a hot day too.")
file12 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337038/skate%20images%20file/triangle_gardens_manchester_zmjhmh.jpg')
spot6.photos.attach(io: file12, filename: 'triangle_gardens_manchester_zmjhmh.jpg', content_type: 'jpg')
spot6.save!

spot7 = Spot.create!(name: "Manch Oxford Road", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Oxford Road, Manchester", skater: skater2,
description: "Excellent big curbs, under cover. In car park beneath bridge down the end of Oxford Road.")
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
spot.save!
spot8 = Spot.create!(name: "Urbis Banks", stairset: false, ledge: true, cover: true, flatground: false, security: "Low", location: "Todd St, Manchester", skater: skater2,
description: "There's lots of ledges which are ranging in height, and some steps close by.. banging spot.")
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
spot.save!
spot9 = Spot.create!(name: "College Green", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Park Street, Bristol", skater: skater3,
description: "Flat ground is big enough to play a game of ‘SKATE’, small curbs along the side allow for some slappy grinds.")
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
spot.save!
# spot10 = Spot.create!(name: "Little Lloyds", stairset: true, ledge: true, cover: false, flatground: false, security: "None", location: "Castle Park, Bristol", skater: skater3,
# description: "Can sometimes be blocked by parked cars but when it’s empty it can be a fun little spot. long 4 stairs are rough but rewarding.")
# spot11 = Spot.create!(name: "College Car Park", stairset: false, ledge: false, cover: true, flatground: true, security: "High", location: "College Street, Bristol", skater: skater3,
# description: "Perfect for a rainy day, full of smooth flat ground inside and out. Can sometimes be a bust when it comes to security.")
# spot12 = Spot.create!(name: "Sefton Park", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Sefton Park, Livepool", skater: skater4,
# description: "Smooth paths that go around the outside are pretty nice (the ones that go inside it are pretty bumpy).")
# spot13 = Spot.create!(name: "Otters Prom", stairset: false, ledge: true, cover: false, flatground: true, security: "None", location: "Otterspool Prommenade, Livepool", skater: skater4,
# description: "Has some nice bits to skate on, but also quite a few bumpy bits and hills. Nice and quiet.")
# spot14 = Spot.create!(name: "Canon Hill Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Kings Norton, Birmingham", skater: skater5,
# description: "As title says, car park in Kings Norton. Perfect to skate if the heavens open.")
# spot15 = Spot.create!(name: "Barr Beacon", stairset: true, ledge: false, cover: false, flatground: true, security: "Low", location: "Pinfold Ln, Walsall", skater: skater5,
# description: "Wicked bunch of stairs, can be quiet in weekdays.")
# spot16 = Spot.create!(name: "Kiacre Car Parks", stairset: false, ledge: true, cover: false, flatground: true, security: "None", location: "Kidacre St, Leeds", skater: skater4,
# description: "Near Crown point shopping center, some nice (mostly) empty car parks with high ledges.")
# spot17 = Spot.create!(name: "War Memo Park", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "War Memorial Park, Coventry", skater: skater5,
# description: "75% of the paths around there are smooth, some lighting at night. Great stair stacks. Security quite often but just need to be careful.")
# spot18 = Spot.create!(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater5,
# description: "The car park out the back of brighton station is lit 24/7, relatively remote as well. A few skaters their at night. There are less cars after business hours.")
puts "spots created"

file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
spot.save!