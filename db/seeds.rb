require "open-uri"

puts "destroying old seeds"
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
skater6 = Skater.create!(username: "Rodrigo", email: "Rodrigo@spotter.com", password: "secret")
skater7 = Skater.create!(username: "Thelma", email: "thelma@spotter.com", password: "secret")
skater8 = Skater.create!(username: "Bonjo", email: "bonjo@spotter.com", password: "secret")
skater9 = Skater.create!(username: "Hercules", email: "hercules@spotter.com", password: "secret")
skater10 = Skater.create!(username: "Morris", email: "morris@spotter.com", password: "secret")
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
spot2.photos.attach(io: file6, filename: 'holborn_garden3_u95j0r.jpg', content_type: 'jpg')
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
spot19 = Spot.new(name: "South Bank Area", stairset: true, ledge: true, cover: true, flatground: true, security: "Low", location: "South Bank, London", skater: skater1,
description: "Nestled cosily under the Southbank Center. There’s always on onlooking crowd appreciating your stunts. The smooth roads ensure that you don’t accidentally trip from your skateboard.")
file25 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340185/skate%20images%20file/southbank_london1_imvfch.jpg')
spot19.photos.attach(io: file25, filename: 'southbank_london1_imvfch.jpg', content_type: 'jpg')
file26 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340186/skate%20images%20file/southbank_london2_ssbu8r.jpg')
spot19.photos.attach(io: file26, filename: 'southbank_london2_ssbu8r.jpg', content_type: 'jpg')
file27 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340185/skate%20images%20file/southbank_london3_lz8vgu.jpg')
spot19.photos.attach(io: file27, filename: 'southbank_london3_lz8vgu.jpg', content_type: 'jpg')
spot19.save!
spot20 = Spot.new(name: "Station Car Park", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Regents Park, London", skater: skater1,
description: "There is no better place than Regent’s Park if you are learning to use a roller blade or skateboard for the first time. The tree-lined pathways and nearby gardens make this a picturesque location for tourists.")
file28 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340797/skate%20images%20file/regents_park_london1_uevgy4.jpg')
spot20.photos.attach(io: file28, filename: 'regents_park_london1_uevgy4.jpg', content_type: 'jpg')
file29 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340797/skate%20images%20file/regents_park_london2_us5h1u.jpg')
spot20.photos.attach(io: file29, filename: 'regents_park_london2_us5h1u.jpg', content_type: 'jpg')
file30 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623340798/skate%20images%20file/regents_park_london3_nopvpb.jpg')
spot20.photos.attach(io: file30, filename: 'regents_park_london3_nopvpb.jpg', content_type: 'jpg')
spot20.save!
spot21 = Spot.new(name: "Canada Water Park", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Canada Water, London", skater: skater2,
description: "Its wide-open space, along with smooth roads makes a perfect combination for skaters. There are also a few steps where you can grind and jump.")
file31 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341248/skate%20images%20file/canada_water_london1_rul37q.jpg')
spot21.photos.attach(io: file31, filename: 'canada_water_london1_rul37q.jpg', content_type: 'jpg')
file32 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341251/skate%20images%20file/canada_water_london2_vcrvvr.jpg')
spot21.photos.attach(io: file32, filename: 'canada_water_london2_vcrvvr.jpg', content_type: 'jpg')
file33 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341253/skate%20images%20file/canada_water_london3_pcqlcj.png')
spot21.photos.attach(io: file33, filename: 'canada_water_london3_pcqlcj.jpg', content_type: 'jpg')
spot21.save!
spot22 = Spot.new(name: "Greenwich Wastelands", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "North Greenwich, London", skater: skater4,
description: "Amazing fauna rich landscape for skating in. Little out the way from the city but worth a visit for a unique urban location.")
file34 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341735/skate%20images%20file/woolwich_london1_jayane.jpg')
spot22.photos.attach(io: file34, filename: 'woolwich_london1_jayane.jpg', content_type: 'jpg')
file35 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341737/skate%20images%20file/woolwich_london2_wdmqcs.jpg')
spot22.photos.attach(io: file35, filename: 'woolwich_london2_wdmqcs.jpg', content_type: 'jpg')
file36 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623341738/skate%20images%20file/woolwich_london3_nxilu2.jpg')
spot22.photos.attach(io: file36, filename: 'woolwich_london3_nxilu2.jpg', content_type: 'jpg')
spot22.save!
spot23 = Spot.new(name: "Beckenham Place Park", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Old Bromley Rd, London", skater: skater5,
description: "An abandoned BMX track has left a perfect playground for gaining speed and popping some nice tricks along the course.")
file37 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342422/skate%20images%20file/beckenham_place1_k0kl0n.jpg')
spot23.photos.attach(io: file37, filename: 'beckenham_place1_k0kl0n.jpg', content_type: 'jpg')
file38 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342424/skate%20images%20file/beckenham_place2_ppo9al.jpg')
spot23.photos.attach(io: file38, filename: 'beckenham_place2_ppo9al.jpg', content_type: 'jpg')
file39 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342422/skate%20images%20file/beckenham_place3_vnjmsc.jpg')
spot23.photos.attach(io: file39, filename: 'beckenham_place3_vnjmsc.jpg', content_type: 'jpg')
spot23.save!
spot24 = Spot.new(name: "Abandoned Car Park", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Marylebone Rd, London", skater: skater5,
description: "If you can find your way in at night, it's a perfect place for groups of skaters who want some exclusivity. Great for filming, lit nicely at night.")
file40 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342806/skate%20images%20file/abandoned_car_park_london1_fsx2af.jpg')
spot24.photos.attach(io: file40, filename: 'abandoned_car_park_london1_fsx2af.jpg', content_type: 'jpg')
file41 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342779/skate%20images%20file/abandoned_car_park_london2_kaewio.jpg')
spot24.photos.attach(io: file41, filename: 'abandoned_car_park_london2_kaewio.jpg', content_type: 'jpg')
file42 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623342779/skate%20images%20file/abandoned_car_park_london3_tlkf2a.jpg')
spot24.photos.attach(io: file42, filename: 'abandoned_car_park_london3_tlkf2a.jpg', content_type: 'jpg')
spot24.save!
spot25 = Spot.new(name: "Vincenne Streets", stairset: true, ledge: true, cover: false, flatground: false, security: "Medium", location: "Bois de Vincennes, Paris ", skater: skater7,
description: "This snazzy little corner has grown, in Paris, to become a highly sought after spot, picking up vast late night crowds of all ages.")
file43 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623769619/skate%20images%20file/vincenne_paris_cukuy0.jpg')
spot25.photos.attach(io: file43, filename: 'vincenne_paris_cukuy0.jpg', content_type: 'jpg')
spot25.save!
spot26 = Spot.new(name: "Gijon Stairwell", stairset: true, ledge: false, cover: false, flatground: false, security: "Low", location: "Gijon, Spain", skater: skater7,
description: "A nice set of stairs give skaters ample opportunity to test their skills on these fairly cobbled roads. Despite it's danger, the stairset has become a local staple in the local skating community.")
file44 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623769618/skate%20images%20file/gijon_spain_dparx1.jpg')
spot26.photos.attach(io: file44, filename: 'gijon_spain_dparx1.jpg', content_type: 'jpg')
spot26.save!
spot27 = Spot.new(name: "Gijon Stairwell", stairset: true, ledge: false, cover: false, flatground: false, security: "High", location: "Rue de Vaugirard, Paris", skater: skater6,
description: "Despite the heavy frop the side ledge, this spot has a lot to offer. Solid stairset, smooth concrete and nice lighting for evening shenanigans. Just be careful of the security in the day.")
file45 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623769618/skate%20images%20file/vaugirard_paris_ypd1xn.jpg')
spot27.photos.attach(io: file45, filename: 'vaugirard_paris_ypd1xn.jpg', content_type: 'jpg')
spot27.save!
spot28 = Spot.new(name: "Rue de Tourtille", stairset: false, ledge: true, cover: false, flatground: false, security: "Low", location: "Rue de Tourtille, Paris", skater: skater8,
description: "Nice colorful part of Paris, a variety of inclines gives skaters a plethora of opportunities to test their skills. ")
file47 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623770922/skate%20images%20file/rue_de_tourtille_paris_efaoxr.jpg')
spot28.photos.attach(io: file47, filename: 'rue_de_tourtille_paris_efaoxr.jpg', content_type: 'jpg')
spot28.save!
spot29 = Spot.new(name: "Calle del Fósforo", stairset: false, ledge: true, cover: true, flatground: false, security: "Medium", location: "Calle del Fósforo, Madrid", skater: skater7,
description: "One of the more interesting areas to skate in Madrid. It's shade in the afternoon allows a cool place to hit up in the day.")
file48 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623770921/skate%20images%20file/calle_del_f%C3%B3sforo_madrid_rybaiv.jpg')
spot29.photos.attach(io: file48, filename: 'calle_del_f%C3%B3sforo_madrid_rybaiv.jpg', content_type: 'jpg')
spot29.save!
spot30 = Spot.new(name: "Calle Lorenzo Silva", stairset: false, ledge: true, cover: false, flatground: false, security: "Low", location: "Calle Lorenzo Silva, Spain", skater: skater7,
description: "Wicked stairset for the whole family")
file49 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623774000/skate%20images%20file/celle_lorenzo_spain_silkjl.jpg')
spot30.photos.attach(io: file49, filename: 'celle_lorenzo_spain_silkjl.jpg', content_type: 'jpg')
spot30.save!

spot31 = Spot.new(name: "R Santos Lessa", stairset: false, ledge: false, cover: false, flatground: false, security: "Medium", location: "R Santos Lessa, Porto", skater: skater6,
description: "One of the better spots, to be sure")
file50 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623773984/skate%20images%20file/lessa_porto_enxxf1.jpg')
spot31.photos.attach(io: file50, filename: 'lessa_porto_enxxf1.jpg', content_type: 'jpg')
spot31.save!

spot32 = Spot.new(name: "R Rio Zezere", stairset: false, ledge: false, cover: false, flatground: true, security: "Medium", location: "R Rio Zezere, Lisbon", skater: skater9,
description: "Should probably be enjoying your family holiday, not skating!")
file51 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623773984/skate%20images%20file/zezere_lisbon_ciz2yj.jpg')
spot32.photos.attach(io: file51, filename: 'zezere_lisbon_ciz2yj.jpg', content_type: 'jpg')
spot32.save!
spot33 = Spot.new(name: "Pablo Iglesias", stairset: true, ledge: false, cover: false, flatground: true, security: "Low", location: "Carrer de Pablo Iglesias, Palma, Spain", skater: skater6,
description: "Skating is such a part of this city right now that you’d be forgiven for thinking you’d gone back to the ’90s.")
file52 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623835267/skate%20images%20file/iglesias_spain_t68oyg.jpg')
spot33.photos.attach(io: file52, filename: 'iglesias_spain_t68oyg.jpg', content_type: 'jpg')
spot33.save!
spot34 = Spot.new(name: "Laforja Way", stairset: true, ledge: false, cover: false, flatground: false, security: "Low", location: "Carrer de Laforja, Barcelona, Spain", skater: skater6,
description: "he iconic Southbank Undercroft was at risk of closure. Now campaigns like Long Live Southbank are preserving skating as part of our culture.")
file53 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623835267/skate%20images%20file/laforja_spain_xz7shw.jpg')
spot34.photos.attach(io: file53, filename: 'laforja_spain_xz7shw.jpg', content_type: 'jpg')
spot34.save!
spot35 = Spot.new(name: "Doña Bonito", stairset: false, ledge: false, cover: true, flatground: true, security: "Medium", location: "Doña Berenguela, Córdoba, Spain", skater: skater10,
description: "Most of all, as our living costs and stress levels, soar, skating is a cheap and sociable way to get outside.")
file54 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623835267/skate%20images%20file/Do%C3%B1a_spain_ttowmd.jpg')
spot35.photos.attach(io: file54, filename: 'Do%C3%B1a_spain_ttowmd.jpg', content_type: 'jpg')
spot35.save!
spot36 = Spot.new(name: "Praza Comercio", stairset: false, ledge: false, cover: false, flatground: true, security: "High", location: "Praza Comercio, A Coruña, Spain", skater: skater6,
description: "We spoke to skaters from across the spectrum: amateurs, instructors, teens and pros, all of whom share a love for celebrating and expanding the scene. ")
file55 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623836010/skate%20images%20file/Comercio_spain_atymfh.jpg')
spot36.photos.attach(io: file55, filename: 'Comercio_spain_atymfh.jpg', content_type: 'jpg')
spot36.save!
spot37 = Spot.new(name: "Calle Tierras", stairset: false, ledge: true, cover: true, flatground: true, security: "Medium", location: "Calle Tierras de Rastrojo, Seville, Spain", skater: skater8,
description: "When I was growing up in London, I used to go to my local skate shop and buy skate videos on DVD.")
file56 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623836010/skate%20images%20file/Tierras_spain_wh3uf5.jpg')
spot37.photos.attach(io: file56, filename: 'Tierras_spain_wh3uf5.jpg', content_type: 'jpg')
spot37.save!
spot38 = Spot.new(name: "Ganeta Monte", stairset: false, ledge: true, cover: false, flatground: true, security: "Medium", location: "Ganeta Monte Kalea, Bilbao, Spain", skater: skater9,
description: "I’ve been making skate videos for a few years. My recent ones are filmed in Charlton skatepark, but we go everywhere.")
file57 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623836010/skate%20images%20file/Monte_spain_gbkubf.jpg')
spot38.photos.attach(io: file57, filename: 'Monte_spain_gbkubf.jpg', content_type: 'jpg')
spot38.save!
spot29 = Spot.new(name: "Rue Cassini", stairset: false, ledge: false, cover: false, flatground: false, security: "Low", location: "Rue Cassini, Paris", skater: skater6,
description: "Dangerously tight road to be on, but worth it if you can visit. ")
file46 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623770922/skate%20images%20file/rue_cassini_paris_trzw4m.jpg')
spot29.photos.attach(io: file46, filename: 'rue_cassini_paris_trzw4m.jpg', content_type: 'jpg')
spot29.save!
spot39 = Spot.new(name: "Herrfurthplatz", stairset: false, ledge: false, cover: false, flatground: true, security: "Medium", location: "Herrfurthplatz, Berlin, Germany", skater: skater10,
description: "My favourite memory is going to a premiere of a film by south London skatewear company Yardsale.")
file58 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838069/skate%20images%20file/germany_szlcdl.jpg')
spot39.photos.attach(io: file58, filename: 'germany_szlcdl.jpg', content_type: 'jpg')
spot39.save!
spot40 = Spot.new(name: "Mulanskystraße", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Mulanskystraße, Frankfurt, Germany", skater: skater10,
description: "It was held in a cinema and there were like 300 skaters there for it. The atmosphere was amazing, everyone getting hyped over every single trick.")
file59 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838069/skate%20images%20file/germany2_nmjz4c.jpg')
spot40.photos.attach(io: file59, filename: 'germany2_nmjz4c.jpg', content_type: 'jpg')
spot40.save!
spot41 = Spot.new(name: "Utbremer", stairset: true, ledge: false, cover: false, flatground: true, security: "Low", location: "Utbremer Straße, Bremen, Germany", skater: skater10,
description: "I got into skateboarding, after surfing, when I was a kid. One season, a hotel I was working at in Cornwall hosted a mini ramp jam with Vans. ")
file60 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838069/skate%20images%20file/germany3_xolvso.jpg')
spot41.photos.attach(io: file60, filename: 'germany3_xolvso.jpg', content_type: 'jpg')
spot41.save!
spot42 = Spot.new(name: "Stubaiweg", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Stubaiweg, Regensburg, Germany", skater: skater9,
description: "The people involved in it were so much fun and I really wanted to be involved too.")
file61 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838577/skate%20images%20file/germany4_qnfyxh.jpg')
spot42.photos.attach(io: file61, filename: 'germany4_qnfyxh.jpg', content_type: 'jpg')
spot42.save!
spot43 = Spot.new(name: "Parlerstraße", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Parlerstraße, Stuttgart, Germany", skater: skater9,
description: "Now I’m sponsored by Vans for skateboarding and I collaborate with other brands on social media content for Instagram.")
file62 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838577/skate%20images%20file/germany5_kpku8l.jpg')
spot43.photos.attach(io: file62, filename: 'germany5_kpku8l.jpg', content_type: 'jpg')
spot43.save!
spot44 = Spot.new(name: "Padelügger", stairset: true, ledge: false, cover: true, flatground: false, security: "Low", location: "Padelügger Weg, Lübeck, Germany", skater: skater7,
description: " I also have a skate brand of my own called Salon. It sells customised grip tape, T-shirts and boards.")
file63 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623838577/skate%20images%20file/germany6_tzaqly.jpg')
spot44.photos.attach(io: file63, filename: 'germany6_tzaqly.jpg', content_type: 'jpg')
spot44.save!
spot45 = Spot.new(name: "Rue Bony", stairset: true, ledge: false, cover: false, flatground: true, security: "High", location: "Rue Bony, Lyon, France", skater: skater4,
description: "They’re stocked in a shop called Brixton’s Baddest. It’s a really community-focused shop and a great place to feel a part of the scene.")
file64 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839112/skate%20images%20file/france_fd6y9t.jpg')
spot45.photos.attach(io: file64, filename: 'france_fd6y9t.jpg', content_type: 'jpg')
spot45.save!
spot46 = Spot.new(name: "Rue Jude", stairset: true, ledge: true, cover: true, flatground: true, security: "Low", location: "Rue Jude, Bordeaux, France", skater: skater4,
description: "I think the London skate scene is a reflection of London itself: it’s gritty and fast-paced with lots of events and so many different people.")
file65 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839112/skate%20images%20file/france2_hh6wot.jpg')
spot46.photos.attach(io: file65, filename: 'france2_hh6wot.jpg', content_type: 'jpg')
spot46.save!
spot47 = Spot.new(name: "Saint-Gervais", stairset: false, ledge: true, cover: false, flatground: true, security: "Low", location: "Rampe Saint-Gervais, Rouen, France", skater: skater4,
description: "However, there’s a sense of community in skateboarding wherever you go.")
file66 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839113/skate%20images%20file/france3_sfpzaw.jpg')
spot47.photos.attach(io: file66, filename: 'france3_sfpzaw.jpg', content_type: 'jpg')
spot47.save!
spot48 = Spot.new(name: "Viale Goffredo", stairset: true, ledge: false, cover: true, flatground: true, security: "Low", location: "Viale Goffredo Mameli, Siena, Province of Siena, Italy", skater: skater4,
description: "I help out with the girls’ night at House of Vans and that session used to be really quiet when I started coming to London.")
file67 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839636/skate%20images%20file/italy_fla0y6.jpg')
spot48.photos.attach(io: file67, filename: 'italy_fla0y6.jpg', content_type: 'jpg')
spot48.save!
spot49 = Spot.new(name: "Via S. Galigano", stairset: true, ledge: false, cover: false, flatground: false, security: "High", location: "Via S. Galigano, Perugia, Province of Perugia, Italy", skater: skater4,
description: "The last time I was there, there were 300 people and it was one-in, one-out!")
file68 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839636/skate%20images%20file/italy2_tznbxg.jpg')
spot49.photos.attach(io: file68, filename: 'italy2_tznbxg.jpg', content_type: 'jpg')
spot49.save!
spot50 = Spot.new(name: "Maria Calefati", stairset: true, ledge: true, cover: false, flatground: true, security: "Low", location: "Via Alessandro Maria Calefati, Bari, Metropolitan City of Bari, Italy", skater: skater4,
description: "It was really great to see how skateboarding has become something that women feel they can be a part of and I am really happy to be involved in that")
file69 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623839636/skate%20images%20file/italy3_ppkrcq.jpg')
spot50.photos.attach(io: file69, filename: 'italy3_ppkrcq.jpg', content_type: 'jpg')
spot50.save!
spot51 = Spot.new(name: "Via Tofane", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Via Tofane, Turin, Metropolitan City of Turin, Italy", skater: skater4,
description: "Hi, there I'm going to learn to skateboard and I wanted to know what the laws were regarding skateboarding in London.")
file70 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840123/skate%20images%20file/italy4_k2lact.jpg')
spot51.photos.attach(io: file70, filename: 'italy4_k2lact.jpg', content_type: 'jpg')
spot51.save!
spot52 = Spot.new(name: "Via Ercole", stairset: true, ledge: false, cover: false, flatground: true, security: "Low", location: "Via Ercole Bernabei, Palermo, PA, Italy", skater: skater4,
description: "Things like what I am allowed to do and what I am not allowed to do. Where can I go?")
file71 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840123/skate%20images%20file/italy5_uha5qq.jpg')
spot52.photos.attach(io: file71, filename: 'italy5_uha5qq.jpg', content_type: 'jpg')
spot52.save!
spot53 = Spot.new(name: "Rapisardi", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Viale Mario Rapisardi, Catania, Province of Catania, Italy", skater: skater4,
description: "Where can't I go? Of course it goes without saying I will be respectful and courteous and not try hit people with the skateboard or damage property!")
file72 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840123/skate%20images%20file/italy6_pl2pxy.jpg')
spot53.photos.attach(io: file72, filename: 'italy6_pl2pxy.jpg', content_type: 'jpg')
spot53.save!
spot54 = Spot.new(name: "Roarsvej", stairset: true, ledge: true, cover: false, flatground: true, security: "Medium", location: "Roarsvej, Herning, Denmark", skater: skater4,
description: "If anyone could help me out or point me somewhere I can read about this I would appreciate it! Thank you!")
file73 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark_sdcc2x.jpg')
spot54.photos.attach(io: file73, filename: 'denmark_sdcc2x.jpg', content_type: 'jpg')
spot54.save!
spot55 = Spot.new(name: "Katrinedalsvej", stairset: false, ledge: false, cover: false, flatground: true, security: "Low", location: "Katrinedalsvej, Copenhagen Municipality, Denmark", skater: skater4,
description: "It's one of those areas where the law and the actual enforcement of the law differ. Technically you cannot use it on the pavement or oublic rights of way.")
file74 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark2_k6jmmt.jpg')
spot55.photos.attach(io: file74, filename: 'denmark2_k6jmmt.jpg', content_type: 'jpg')
spot55.save!
spot56 = Spot.new(name: "Regitsevej", stairset: true, ledge: false, cover: true, flatground: true, security: "Low", location: "Regitsevej, Copenhagen Municipality, Denmark", skater: skater4,
description: "You could use it in the road but it has to be registered roadworthy, which isn't exactly easy to do.")
file75 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark3_x5v4fk.jpg')
spot56.photos.attach(io: file75, filename: 'denmark3_x5v4fk.jpg', content_type: 'jpg')
spot56.save!
spot57 = Spot.new(name: "Skagavej", stairset: true, ledge: false, cover: true, flatground: true, security: "Medium", location: "Skagavej, Denmark", skater: skater4,
description: "You would need lights, reflectors etc. That being said, policemen have better things to do than stop people skateboarding.")
file76 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark4_q6jlna.jpg')
spot57.photos.attach(io: file76, filename: 'denmark4_q6jlna.jpg', content_type: 'jpg')
spot57.save!
spot58 = Spot.new(name: "Mimersvej", stairset: false, ledge: false, cover: false, flatground: false, security: "Low", location: "Mimersvej, Randers Municipality, Denmark", skater: skater4,
description: "That is unless you are being dangerous to yourself or others in which case they have every right to stop you.")
file77 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark5_xqwovc.jpg')
spot58.photos.attach(io: file77, filename: 'denmark5_xqwovc.jpg', content_type: 'jpg')
spot58.save!
spot59 = Spot.new(name: "Perlegade", stairset: true, ledge: false, cover: false, flatground: false, security: "Medium", location: "Perlegade, Sønderborg, Denmark", skater: skater4,
description: "If you choose your spot wisely and it isn't private property and you aren't bothering anyone you should be cool for cats.")
file78 = URI.open('https://res.cloudinary.com/dgjlblazi/image/upload/v1623840945/skate%20images%20file/denmark6_yihxtr.jpg')
spot59.photos.attach(io: file78, filename: 'denmark6_yihxtr.jpg', content_type: 'jpg')
spot59.save!


puts "spots created"


# spot39 = Spot.new(name: "Herrfurthplatz", stairset: false, ledge: false, cover: false, flatground: true, security: "Medium", location: "Herrfurthplatz, Berlin, Germany", skater: skater4,
# description: "")
# file58 = URI.open('')
# spot39.photos.attach(io: file58, filename: '.jpg', content_type: 'jpg')
# spot39.save!