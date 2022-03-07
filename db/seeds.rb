# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
puts "\n...create admin users!"

#
u = User.create!(first_name: "Admin", last_name: "Admin", password: "123456", email: "admin@admin.com", teacher: true)
file = URI.open("https://avatars.githubusercontent.com/u/94664377?v=4")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Taylor", last_name: "Mravic", password: "123456", email: "taylor@mravic.com", teacher: true)
file = URI.open("https://www.wantedly.com/users/154326948/avatar?t=b5f4c4ccc37ea0b212f77da23fab660e")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!


u = User.create!(first_name: "Doug", last_name: "Theman", password: "123456", email: "doug@theman.com", teacher: true)
file = URI.open("https://www.douglasberkley.com/images/face.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Risako", last_name: "Nagai", password: "123456", email: "risako@nagai.com", teacher: false)
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1641821505/bsgezow9t1kpiwbyeele.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Trouni", last_name: "Assassin", password: "123456", email: "trouni@assassin.com", teacher: true)
file = URI.open('https://i1.wp.com/www.kaepler.com/wp-content/uploads/2021/09/headshot-edited.jpg')
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

User.create!(first_name: "Hideyoshi", last_name: "Toyotomi", password: "123456", email:"hidetoyo@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Takeshi_Kitano#/media/File:Takeshi_Kitano_2017.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Shintaro", last_name: "Suzuki", password: "123456", email:"s.shintaro@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Ren_Osugi#/media/File:Ren_Osugi.jpeg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Musashi", last_name: "Miyamoto", password: "123456", email:"musamiya@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Nao_%C5%8Cmori#/media/File:26th_Tokyo_International_Film_Festival_Nao_%C5%8Cmori.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Ieyasu", last_name: "Tokugawa", password: "123456", email:"tokugawasan@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Tadanobu_Asano#/media/File:Tadanobu_Asano_2011_(cropped).jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Nobunaga", last_name: "Oda", password: "123456", email:"odadono@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Ittoku_Kishibe#/media/File:Kishibe_Ittoku_from_%22Lying_to_Mom%22_at_Opening_Ceremony_of_the_Tokyo_International_Film_Festival_2018_(30678144367).jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Masashige", last_name: "Kusunoki", password: "123456", email:"masakusu@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Akira_Kurosawa#/media/File:EvanHunter.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Hanzo", last_name: "Hattori", password: "123456", email: "hh_007@yahoo.co.jp", teacher: false)
file = URI.open("https://outsider.com/wp-content/uploads/2021/08/sonny-chiba-martial-arts-icon-hattori-hanzo-kill-bill-dead-82.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

# female

u = User.create!(first_name: "Hikaru", last_name: "Utada", password: "123456", email: "singuta@yahoo.co.jp", teacher: false)
file = URI.open("https://soranews24.com/wp-content/uploads/sites/3/2021/09/UH-1.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Yoko", last_name: "Ono", password: "123456", email: "lenonaide@yahoo.co.jp", teacher: false)
file = URI.open("https://media.istockphoto.com/photos/young-japanese-women-picture-id885523280")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Yoko", last_name: "Ono", password: "123456", email: "ringo_aide@yahoo.co.jp", teacher: false)
file = URI.open("https://media.istockphoto.com/photos/young-japanese-women-picture-id885523280")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Kumi", last_name: "Koda", password: "123456", email:"s_voice@yahoo.co.jp", teacher: false)
file = URI.open("https://media.istockphoto.com/photos/young-girl-leaning-out-of-the-round-window-picture-id875531668")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Ayumi", last_name: "Hamasaki", password: "123456", email:"timelessmagic@yahoo.co.jp", teacher: false)
file = URI.open("https://fr.wikipedia.org/wiki/Ayumi_Hamasaki#/media/Fichier:Hamasaki_Ayumi.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Mai", last_name: "Kuraki", password: "123456", email:"expressyourself@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Mai_Kuraki#/media/File:Mai-kuraki-taiwan-2019.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Kana", last_name: "Hanazawa", password: "123456", email:"hanakana@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Kana_Hanazawa#/media/File:Hanazawa_Kana_from_%22Human_Lost%22_at_Opening_Ceremony_of_the_Tokyo_International_Film_Festival_2019_(49013612766).jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Aya", last_name: "Kamiki", password: "123456", email:"ayaka@yahoo.co.jp", teacher: false)
file = URI.open("https://www.detectiveconanworld.com/wiki/File:Aya_Kamiki.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Nana", last_name: "Kitade", password: "123456", email:"nana_77@yahoo.co.jp", teacher: false)
file = URI.open("https://en.wikipedia.org/wiki/Nana_Kitade#/media/File:Nana_Kitade_20070707_Japan_Expo_23.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Keiko", last_name: "Kitagawa", password: "123456", email:"northernriver@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hbFxLjMvFnbdPA81RnJ5F9Pdi91.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Kana", last_name: "Kurashina", password: "123456", email:"hashikan@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4lfxz4MKbcvH4lL97vLldTNb7qC.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Kana", last_name: "Kurashina", password: "123456", email:"hashikan2@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4lfxz4MKbcvH4lL97vLldTNb7qC.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Erika", last_name: "Toda", password: "123456", email:"etoda@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/Au0qYs7uDsQT4pPbSEIGlRgJDih.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Mirei", last_name: "Kiritani", password: "123456", email:"kirei_mirei@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ohwjHKGA9g4YSAemFMIzF7DX23g.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!

u = User.create!(first_name: "Suzu", last_name: "Hirose", password: "123456", email:"hisu@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2QPyHhJQ0BY7GEsH3L5g8DhxPTQ.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!



# CREATING FAKE SPEECHES

# speeches.each do |speeches|
#     s = Speech.new(
#       title: ,
#       length: (1..10).sample,
#       transcript:
#       notes:
#       user: User.offset(rand(User.count)).first
#     )

#     s.save!
# end
