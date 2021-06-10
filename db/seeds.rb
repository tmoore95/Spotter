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
spot7 = Spot.new(name: "Manch Oxford Road", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Oxford Road, Manchester", skater: skater2,
description: "Excellent big curbs, under cover. In car park beneath bridge down the end of Oxford Road.")
file13 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337396/skate%20images%20file/oxford_road_manchester_ognl5x.png')
spot7.photos.attach(io: file13, filename: 'oxford_road_manchester_ognl5x.jpg', content_type: 'jpg')
spot7.save!
spot8 = Spot.new(name: "Urbis Banks", stairset: false, ledge: true, cover: true, flatground: false, security: "Low", location: "Todd St, Manchester", skater: skater2,
description: "There's lots of ledges which are ranging in height, and some steps close by.. banging spot.")
file14 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337392/skate%20images%20file/urbis_banks_manchester_r10vkx.jpg')
spot8.photos.attach(io: file14, filename: 'urbis_banks_manchester_r10vkx.jpg', content_type: 'jpg')
spot8.save!
spot9 = Spot.new(name: "College Green", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Park Street, Bristol", skater: skater3,
description: "Flat ground is big enough to play a game of ‘SKATE’, small curbs along the side allow for some slappy grinds.")
file15 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337393/skate%20images%20file/college_green_bristol_qndksx.jpg')
spot9.photos.attach(io: file15, filename: 'college_green_bristol_qndksx.jpg', content_type: 'jpg')
spot9.save!

spot10 = Spot.new(name: "Little Lloyds", stairset: true, ledge: true, cover: false, flatground: false, security: "Low", location: "Castle Park, Bristol", skater: skater3,
description: "Can sometimes be blocked by parked cars but when it’s empty it can be a fun little spot. long 4 stairs are rough but rewarding.")
file16 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337890/skate%20images%20file/little_llyods_bristol_lnemht.jpg')
spot10.photos.attach(io: file16, filename: 'little_llyods_bristol_lnemht.jpg', content_type: 'jpg')
spot10.save!
spot11 = Spot.new(name: "College Car Park", stairset: false, ledge: false, cover: true, flatground: true, security: "High", location: "College Street, Bristol", skater: skater3,
description: "Perfect for a rainy day, full of smooth flat ground inside and out. Can sometimes be a bust when it comes to security.")
file17 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337877/skate%20images%20file/college_car_park_bristol_sndht8.jpg')
spot11.photos.attach(io: file17, filename: 'college_car_park_bristol_sndht8.jpg', content_type: 'jpg')
spot11.save!
spot12 = Spot.new(name: "Sefton Park", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Sefton Park, Livepool", skater: skater4,
description: "Smooth paths that go around the outside are pretty nice (the ones that go inside it are pretty bumpy).")
file18 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623337876/skate%20images%20file/sefton_park_liverpool_pv2iz6.jpg')
spot12.photos.attach(io: file18, filename: 'sefton_park_liverpool_pv2iz6.jpg', content_type: 'jpg')
spot12.save!
spot13 = Spot.new(name: "Otters Prom", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Otterspool Prommenade, Livepool", skater: skater4,
description: "Has some nice bits to skate on, but also quite a few bumpy bits and hills. Nice and quiet.")
file19 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623338798/skate%20images%20file/otters_prom_liverpool_d6x4su.jpg')
spot13.photos.attach(io: file19, filename: 'otters_prom_liverpool_d6x4su.jpg', content_type: 'jpg')
spot13.save!
spot14 = Spot.new(name: "Canon Hill Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Kings Norton, Birmingham", skater: skater5,
description: "As title says, car park in Kings Norton. Perfect to skate if the heavens open.")
file20 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623338798/skate%20images%20file/cannon_hill_park_birmingham_hnwfsj.jpg')
spot14.photos.attach(io: file20, filename: 'cannon_hill_park_birmingham_hnwfsj.jpg', content_type: 'jpg')
spot14.save!
spot15 = Spot.new(name: "Barr Beacon", stairset: true, ledge: false, cover: false, flatground: true, security: "Low", location: "Pinfold Ln, Walsall", skater: skater5,
description: "Wicked bunch of stairs, can be quiet in weekdays.")
file21 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623338799/skate%20images%20file/barr_beacon_walsall_euay2d.jpg')
spot15.photos.attach(io: file21, filename: 'barr_beacon_walsall_euay2d.jpg', content_type: 'jpg')
spot15.save!

spot16 = Spot.new(name: "Kiacre Car Parks", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Kidacre St, Leeds", skater: skater4,
description: "Near Crown point shopping center, some nice (mostly) empty car parks with high ledges.")
file22 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623339419/skate%20images%20file/kiacre_car_park_leeds_vzbbdw.jpg')
spot16.photos.attach(io: file22, filename: 'kiacre_car_park_leeds_vzbbdw.jpg', content_type: 'jpg')
spot16.save!
spot17 = Spot.new(name: "War Memo Park", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "War Memorial Park, Coventry", skater: skater5,
description: "75% of the paths around there are smooth, some lighting at night. Great stair stacks. Security quite often but just need to be careful.")
file23 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623339417/skate%20images%20file/war_memo_park_coventry_e7t1iu.jpg')
spot17.photos.attach(io: file23, filename: 'war_memo_park_coventry_e7t1iu.jpg', content_type: 'jpg')
spot17.save!
spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater5,
description: "The car park out the back of brighton station is lit 24/7, relatively remote as well. A few skaters their at night. There are less cars after business hours.")
file24 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623339418/skate%20images%20file/station_car_park_brighton_xoa7az.jpg')
spot18.photos.attach(io: file24, filename: 'station_car_park_brighton_xoa7az.jpg', content_type: 'jpg')
spot18.save!
spot18 = Spot.new(name: "South Bank Area", stairset: true, ledge: true, cover: true, flatground: true, security: "Low", location: "South Bank, London", skater: skate1,
description: "Nestled cosily under the Southbank Center, this park is a hub for skaters. There’s always on onlooking crowd appreciating your stunts. The smooth roads ensure that you don’t accidentally trip from your skateboard.")
file25 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340185/skate%20images%20file/southbank_london1_imvfch.jpg')
spot18.photos.attach(io: file25, filename: 'southbank_london1_imvfch.jpg', content_type: 'jpg')
file26 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340186/skate%20images%20file/southbank_london2_ssbu8r.jpg')
spot18.photos.attach(io: file26, filename: 'southbank_london2_ssbu8r.jpg', content_type: 'jpg')
file27 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340185/skate%20images%20file/southbank_london3_lz8vgu.jpg')
spot18.photos.attach(io: file27, filename: 'southbank_london3_lz8vgu.jpg', content_type: 'jpg')
spot18.save!

spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater1,
description: "")
spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater2,
description: "")
spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater4,
description: "")
spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater5,
description: "")
spot18 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Low", location: "Stroudley Road, Brighton", skater: skater5,
description: "")



puts "spots created"

file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
file = URI.open('')
spot.photos.attach(io: file, filename: '.jpg', content_type: 'jpg')
spot.save!