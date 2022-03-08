# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Speech.destroy_all
Training.destroy_all
User.destroy_all
puts "\n...create admin users!"


#
u = User.create!(first_name: "Admin", last_name: "Admin", password: "123456", email: "admin@admin.com", teacher: true)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646625293/94664377_twdukm.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Taylor", last_name: "Mravic", password: "123456", email: "taylor@mravic.com", teacher: true)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1645341590/me7_fec2w3.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"

u = User.create!(first_name: "Doug", last_name: "Theman", password: "123456", email: "doug@theman.com", teacher: true)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646625330/doug_krqyub.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Risako", last_name: "Nagai", password: "123456", email: "risako@nagai.com", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646625382/risako_gzxokm.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Trouni", last_name: "Assassin", password: "123456", email: "trouni@assassin.com", teacher: true)
file = URI.open('https://res.cloudinary.com/dqco8z2dj/image/upload/v1646625503/trouni_e1h4sr.jpg')
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
User.create!(first_name: "Hideyoshi", last_name: "Toyotomi", password: "123456", email:"hidetoyo@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646625536/800px-Takeshi_Kitano_2017_sh0htn.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Shintaro", last_name: "Suzuki", password: "123456", email:"s.shintaro@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646626079/800px-Hideo_Higashikokubaru_2007_1216_gjcimo.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Musashi", last_name: "Miyamoto", password: "123456", email:"musamiya@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646626168/omori_nao_wrq98h.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Ieyasu", last_name: "Tokugawa", password: "123456", email:"tokugawasan@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646626235/asano_tadanobu_zsjmsi.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Nobunaga", last_name: "Oda", password: "123456", email:"odadono@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646626307/dick_thomas_johnson_w67qr0.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Masashige", last_name: "Kusunoki", password: "123456", email:"masakusu@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646627468/EvanHunter_c3pbpl.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Hanzo", last_name: "Hattori", password: "123456", email: "hh_007@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646627599/sony_chiba_yzzrhq.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
# female

u = User.create!(first_name: "Hikaru", last_name: "Utada", password: "123456", email: "singuta@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646627687/utada_qrgbno.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Yoko", last_name: "Ono", password: "123456", email: "lenonaide@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646627824/yoko_ono_k8tdzv.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
# u = User.create!(first_name: "Yoko", last_name: "Ono", password: "123456", email: "ringo_aide@yahoo.co.jp", teacher: false)
# file = URI.open("https://media.istockphoto.com/photos/young-japanese-women-picture-id885523280")
# u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
# u.save!
puts "user created"
u = User.create!(first_name: "Kumi", last_name: "Koda", password: "123456", email:"s_voice@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646627977/yui_v0vs7z.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Ayumi", last_name: "Hamasaki", password: "123456", email:"timelessmagic@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628030/hamasaki_hmhsld.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Mai", last_name: "Kuraki", password: "123456", email:"expressyourself@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628096/taiwan_zuj2jw.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Kana", last_name: "Hanazawa", password: "123456", email:"hanakana@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628150/hana_kanazawa_zxgsai.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Aya", last_name: "Kamiki", password: "123456", email:"ayaka@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628214/kamiki_aya_mdqbpn.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Nana", last_name: "Kitade", password: "123456", email:"nana_77@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628278/kitade_yznmhd.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Keiko", last_name: "Kitagawa", password: "123456", email:"northernriver@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628367/keiko_zin6uq.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Kana", last_name: "Kurashina", password: "123456", email:"hashikan@yahoo.co.jp", teacher: false)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4lfxz4MKbcvH4lL97vLldTNb7qC.jpg")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Kana", last_name: "Kurashina", password: "123456", email:"hashikan2@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628426/kurashina_wvbset.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Erika", last_name: "Toda", password: "123456", email:"etoda@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628482/erika_weqysi.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Mirei", last_name: "Kiritani", password: "123456", email:"kirei_mirei@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628525/mirei_tqjnxa.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"
u = User.create!(first_name: "Suzu", last_name: "Hirose", password: "123456", email:"hisu@yahoo.co.jp", teacher: false)
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646628577/suzu_hirose_hdrje1.png")
u.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
u.save!
puts "user created"

users = User.all.to_a

t = Training.create!( user_id: u.id )
t.save!
puts "Training created"

s1 = Speech.new(transcript: ' I am thrilled to welcome the Class of 2022 to our Graduation Party. I can scarcely believe we are graduates – it really is a time for a huge celebration. I love the party venue already, it is outstanding!
  Before we launch the event let us take a moment to thank the party organising committee, the team who set up the party and all those who are helping tonight. This party has been many months in the planning phase and many weeks in preparation. The team also raised a lot of money to help towards costs. We all owe you a lot.
  Now, one way we can show our appreciation is to have the time of our lives!
  There is great music, dancing, entertainers, food, drinks, snack kiosks, lots of things to see and do all round the venue and of course there is our Class to be with – what more can you need.
  I have to tell you for safety the exits are signposted in case of emergency, if you need help contact one of the helpers right away and also for comfort the rest rooms are also signposted. Be sure to check out where everything is.
  Congratulations to all of us on our graduation. Tonight is our moment to celebrate wildly and to enjoy the company of our Class.
  I hope we have the night of our lives!' , notes: ' This is my graduation speech, any feedback appreciated. ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s1.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s1.save!
puts "Speech created #{s1}"

users.shift

s2 = Speech.new(transcript: 'Welcome to the Graduation Party of a lifetime for the graduating Class of 2022.
  We have a party lined up that you will be talking to your grandchildren about.
  There is music from the best band in the Kyoto Prefecture.
  There is great food, drinks, snacks, plus donut and bagel kiosks. We have wondering entertainers all around the party. Plus games booths where you can win prizes. We have dance prizes and lots of spot prizes too.
  Just get right into the party and see where it takes you. I am sure you will have the time of your lives.
  Congratulations Class of 2022.' , notes: ' Urgent! If possible I would like it done by tomorrow. ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s2.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s2.save!
puts "Speech created #{s2}"

users.shift

s3 = Speech.new(transcript: 'It is possible to imagine that human nature, the human intellect, emotions and feelings are completely independent of our technologies; that we are essentially ahistorical beings with one constant human nature that has remained the same throughout history or even pre-history? Sometimes evolutionary psychologists—those who belief human nature was fixed on the Pleistocene Savannah—talk this way. I think this is demonstrably wrong.
  Consider ancient technologies, for example: cooking. When ancient hunter-gatherers discovered that firing their meat would not only make it tastier but could make their food easier to digest, it had a number of knock-on effects. It made parts of an animal carcass that were previously inedible edible, and also made it possible to preserve food longer. But this was not only a culinary but a cognitive success.Why? Because the amount of time our ancestors had to spend finding, hunting, and butchering their food, and thus maintain life, could be reduced making time available to invest in other activities such as thinking. Thanks to cooking, new time became available to prehistoric humans to plan, to consider, and invent other even more liberating technologies—or even to fritter away drawing bison and mammoth on the walls of caves.
  ' , notes: ' Hi, I would like some help with intonation mainly.  ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s3.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s3.save!
puts "Speech created #{s3}"

# s = Speech.new(transcript: 'Hello everyone.
#   My name is Jim Smith, and I'm a systems analyst.
#   I've been with the company for 5 years now. I started off as a technician and over the years progressed to my current role.
#   When I'm not working, I like to spend time with my son. We do a lot of fishing and camping together. My wife isn't a big fan, but she tags along with us most of the time.
#   It's good to be here and to meet you all in person. We all exchange emails and phone calls, but it's hard to really know someone until you've met face to face. I'm looking forward to talking about our upcoming project with all of you'
#   , notes: ' This is a short self introduction that I   ', user_id: u.id, training_id: t.id )
# file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
# s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
# s.save!
# puts "Speech created"





# def random_user
#   User.offset(rand(User.count)).first
# end

# def random_speech
#   Pet.offset(rand(Speech.count)).first
# end
