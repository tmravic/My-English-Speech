# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require "resolv-replace"
Order.destroy_all
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
file = URI.open("https://res.cloudinary.com/dqco8z2dj/image/upload/v1646830417/hideyoshi_zcjfz2.png")
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
u = User.create!(first_name: "Kana", last_name: "Kura", password: "123456", email:"hashikan@yahoo.co.jp", teacher: false)
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

t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"

s = Speech.new(title: 'Graduation Speech', transcript: ' I am thrilled to welcome the Class of 2022 to our Graduation Party. I can scarcely believe we are graduates – it really is a time for a huge celebration. I love the party venue already, it is outstanding!
  Before we launch the event let us take a moment to thank the party organising committee, the team who set up the party and all those who are helping tonight. This party has been many months in the planning phase and many weeks in preparation. The team also raised a lot of money to help towards costs. We all owe you a lot.
  Now, one way we can show our appreciation is to have the time of our lives!
  There is great music, dancing, entertainers, food, drinks, snack kiosks, lots of things to see and do all round the venue and of course there is our Class to be with – what more can you need.
  I have to tell you for safety the exits are signposted in case of emergency, if you need help contact one of the helpers right away and also for comfort the rest rooms are also signposted. Be sure to check out where everything is.
  Congratulations to all of us on our graduation. Tonight is our moment to celebrate wildly and to enjoy the company of our Class.
  I hope we have the night of our lives!' , notes: ' This is my graduation speech, any feedback appreciated. ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"



users.shift

t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"

s = Speech.new(title: 'Kyoto grad address', transcript: 'Welcome to the Graduation Party of a lifetime for the graduating Class of 2022.
  We have a party lined up that you will be talking to your grandchildren about.
  There is music from the best band in the Kyoto Prefecture.
  There is great food, drinks, snacks, plus donut and bagel kiosks. We have wondering entertainers all around the party. Plus games booths where you can win prizes. We have dance prizes and lots of spot prizes too.
  Just get right into the party and see where it takes you. I am sure you will have the time of your lives.
  Congratulations Class of 2022.' , notes: ' Urgent! If possible I would like it done by tomorrow. ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"

users.shift
t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"


s = Speech.new(title: 'Tech Dilema.', transcript: 'It is possible to imagine that human nature, the human intellect, emotions and feelings are completely independent of our technologies; that we are essentially ahistorical beings with one constant human nature that has remained the same throughout history or even pre-history? Sometimes evolutionary psychologists—those who belief human nature was fixed on the Pleistocene Savannah—talk this way. I think this is demonstrably wrong.
  Consider ancient technologies, for example: cooking. When ancient hunter-gatherers discovered that firing their meat would not only make it tastier but could make their food easier to digest, it had a number of knock-on effects. It made parts of an animal carcass that were previously inedible edible, and also made it possible to preserve food longer. But this was not only a culinary but a cognitive success.Why? Because the amount of time our ancestors had to spend finding, hunting, and butchering their food, and thus maintain life, could be reduced making time available to invest in other activities such as thinking. Thanks to cooking, new time became available to prehistoric humans to plan, to consider, and invent other even more liberating technologies—or even to fritter away drawing bison and mammoth on the walls of caves.
  ' , notes: ' Hi, I would like some help with intonation mainly.  ', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"


# -----------------

users.shift

t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"

s = Speech.new(title: 'Self Introduction.', transcript: 'Hello everyone. My name is Jim Smith, and I am a systems analyst. I have been with the company for 5 years now. I started off as a technician and over the years progressed to my current role.
  When I am not working, I like to spend time with my son. We do a lot of fishing and camping together. My wife isnt a big fan, but she tags along with us most of the time.
  Its good to be here and to meet you all in person. We all exchange emails and phone calls, but its hard to really know someone until you have met face to face. I am looking forward to talking about our upcoming project with all of you
  ' , notes: 'If possible I would like it done by tomorrow.', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"

users.shift
t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"


s = Speech.new(title: 'Wedding Speech', transcript: 'Ladies and gentlemen, it was said half a century ago that in the future everyone on earth would get 15 minutes of fame once in a lifetime and I guess that this is mine. People have also told me to make these next few minutes escruciatingly embarrassing and to take vengeance of my enemies. Neither will happen.
  When we visited Verona in Italy a few years ago we saw the one and only, the absolutely genuine (if you believe what they say) Romeo and Juliet balcony. It was just like this balcony between two floors that I am standing on, so how very appropriate for this romantic day.
  On the other hand and staying with Shakespeare a balcony like this would be ideal for the famous friends, Romans and countrymen lend me your ears’ speech, so perhaps you will do just that for just a few minutes.
  So, a welcome to everyone up there in heaven and a warm welcome to everyone down there in . . on the ground floor, although rumour has it that there is a lower level to which those who drink too much are escorted never to be seen again.
  When my mother was married in 1934 while the reception was taking place her family held a funeral service for her in her absence and never spoke to her again, for religious differences.
  When Pilar and I married in Barcelona in 1982 not one member of my family or friends could come and our reception was a pizza for two in La Mama.
  So you have no idea what a special, extraordinary pleasure to welcome you here today to a wedding as it should be and exactly as Zack and Lizzie wanted it to be. Pie and mash and all.
  Pilar and I as well as John and Debby, and Zack and Lizzie of course want to thank everyone for coming to the wedding, - especially everyone who has travelled a long distance at considerable expense.
  - Gloria, Angel, Abigail and Keila from Spain, Rebecca from Dubai, Philippe, Josephine and Michel from Burkina Faso, West Africa
  - a thank you to Lizzies bridesmaids and Zacks ushers and to everyone who has worked so hard to make this day special. ', notes: 'Notes', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"

users.shift

t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"

s = Speech.new(title: 'Conference Speech', transcript: 'Dear Excellencies, distinguished guests, dear colleagues, ladies and gentlemen,
  It is a true pleasure for me to welcome you to the third Euro-CASE Annual Conference, this time in Berlin. I am very grateful to you, Professor Martin Schuurmans, President of the EIT, for taking time off from your busy schedule to attend this important conference. I also wish to thank Mrs. Professor Treschow-Torrel, chair of Euro-CASE for agreeing to preside over this event.
  It is also an honour for us to welcome representatives from our partner academies as well as experts from science, business and politics to the conference today. And I would like to greet the representa- tives from the Federal Government and the European Union.
  I am especially honoured to welcome you here to the Berlin-Brandenburg Academy of Sciences – the birthplace of acatech. In this regional scientific academy, one of seven – now eight in Germany, a bottom-up process was started in early 1997 to establish a national scientific academy in the Federal Republic of Germany.
  And it is no wonder indeed that this process started here: the BBAW originated from the “Preus- sischen” Academy of Sciences initiated by Leinbiz in the year 1700 under the paradigm: “Theoria cum praxi”. And in this academy an engineer becomes an ordinary member: von Siemens.
  Ten years later, in 2007, the Federal and then 16 State Governments of Germany decided to com- monly fund acatech as an official invitation and, thus, on the 1st of January 2008 acatech became the first national academy of science and engineering of a unified Germany under the patronage of our Bundespräsident.
  Now, in 2010, we are proud to host the Euro-CASE Annual Conference for the first time.
  In my opinion the time is now right to reflect on a number of questions. Today, Europe is at the crossroads of its future: Did we choose the right instruments in the crisis? Have our recovery pro- grammes had the intended effects? How can we secure lasting and sustainable growth? How do we produce long-term value creation?
  acatech’s answer has been and will be: through innovation.' , notes: ' Urgent! If possible I would like it done by tomorrow.', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"

users.shift
t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"


s = Speech.new(title: 'Climate Change Speech', transcript: 'The United Nations panel on climate change projects that the global temperatures will rise 3-10 degrees fahrenheit by the century’s end – enough to have the polar caps all but melted. If the ice caps melt, a vast majority of our countries borders will be under water. Monuments and great buildings, as well as homes and lives will be under water, including New York City.
  So now we know what some of the causes are for global warming, how can we as individuals do our part to help save the planet?
  The answer is simpler than you may think. You don’t have to go miles away from home to protest, or spend masses of money. If you try to follow the few simple steps that I shall now give you, you will have started to help us all.
  Firstly, plant a tree. This could be easier than it sounds. Join or help out a local wildlife group and ask to plant a tree. Trees, when fully grown, will help keep the planet cooler. On the same point, you could protest against the demolition of the rainforests. This is the same principle, we need the trees to cool our planet and yet they are chopping them down to create roads or homes.
  Something as simple as walking instead of taking the car will help reduce pollution. As well as stopping pollution, you are giving yourself exercise, something important for our bodies. So the next time you get into your car, or your motorbike, think – do I have to make this journey by vehicle or can I walk?
  When you are at home, and your getting a little cold. Put a jumper on and do not adjust the heating. The extra heat produced by our homes also affects the planet. So try wearing an extra layer in winter.
  If possible, buy your fruit and vegetables from local suppliers. And try to avoid imported goods. The more foreign food that we import the more pollution from aeroplanes and boats it will create.
  Keeping to the speed limit can also help the environment. The more you speed the more petrol you are going to use, making the pollution higher. Also, SUV’s make about six times their own weight in CO2 each year. A small efficient diesel car covering the same distance not only uses much less fuel; it makes two thirds less.
  If possible use solar energy, after all it is free; all you need to buy is the equipment. You can get much of your hot water and heating from the sun and even generate electricity.
  Reduce, reuse and recycle. Only buy what you need; don’t stock the cupboards with things you may or may not use. Reuse whatever you can, like containers and paper, and recycle what you cannot reuse. It really is as simple as that.
  Finally turning off unused sources of power such as televisions and heaters will help the environment, as well as save you money.
  If everybody stuck to these rules, we would be doing a great thing by protecting the earth. So please take into consideration what I have said, and try to do your part. After all, it will be our next generation that will feel the effects.
  ',notes: 'Public speaking is so scary, I need this perfect', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"


users.shift
t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"


s = Speech.new(title: 'Appreciation Speech at my Wedding', transcript: 'Amanda and I want to thank all of our guests for taking the time to celebrate with us today. We understand that being here was a special sacrifice for some as there is a Red Sox/Yankees game going on as we speak.

  We truly are humbled by the show of love and support that we have received from family and friends not just today, but also over the last several months. So many of you have helped with various aspects of the planning and I can say this wedding would not have been nearly as beautiful or as organized without your help.

  This is certainly a special day for Amanda and me, and I hope that the support that you have shown us will continue. As we embark on our new life together, I hope that those of you who have been married for many years will be willing to offer advice when needed. We are committed to staying married for the long haul, and we know it will be so much easier with all of your by our sides.

  Enjoy the rest of the party, and again, thank you all so much for being here today. It means more to both of us than I could ever express.
  ', notes: 'I am so nervious, need your assistance', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}"


users.shift
t = Training.create!( user_id: users.first.id )
t.save!
puts "Training created"


s = Speech.new(title: 'Congratulations Speech', transcript: 'Dear colleagues,
  I am very glad to have a chance to deliver my speech on such a pleasant occasion. It is a large honor for me to receive an award for the implementation of the most successful project of this year. I am strongly grateful for this high recognition of the work that was done as far as I believe that every project deserved to be distinguished with this award.
  Being honest, the way to this award and project realization was rather long and not easy. Starting from the moment when the project was only one small idea and until today, much work has been done. Bringing the idea into life required much effort, and many challenges arose on the way. However, every problem that appeared on the way was solved, and every obstacle was overcome. The importance of the project striving to ease the lives of a large number of people was the most powerful stimulus and the driving force, leading to impressive results. However, all of that would have been impossible without the coordinated work of the team that collaborated in order to overpass the barriers and to make the idea function properly.
  Here, I would like to use the chance to express my deep gratitude to the members of the team who were working on this project for the last year. I believe that every participant of the project has made a weighty contribution to the project. It would not be an exaggeration when I say that it is an honor to me to be a manager of such a professional and highly devoted team. Our collective work has resulted in impressive results, and it is an achievement of each team member and project participant. The solution of problems, coming up with new ideas, developing plans were the results of common work and constant collaboration.
  I must say now that the team has transformed into a family and our project became our child. I remember active and fierce discussions that resulted in new and well-developed decisions. I also remember time spent in the office after the working day ended as far as inspiration came then. I remember the support and friendly approach on the side of team members and willingness to help each other. I remember persuading the high management about the importance of changes, and I am happy that it was accomplished. Those were the great moments that taught me much, and I believe that they made the implementation of the project possible.
  Today I am grateful to everyone who participated in the realization of the project. I believe that the work that was done within this project deserves an award, as well as everyone who devoted their time and effort to it. This project was a great starting point for a larger one, and I hope that it would ultimately result in an even larger success due to collaboration and creative potential.
   Thank you very much!
  ', notes: 'Please help me', user_id: users.first.id, training_id: t.id )
file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
s.save!
puts "Speech created #{s}


# users.shift
# t = Training.create!( user_id: users.first.id )
# t.save!
# puts "


# s = Speech.new(transcript: '', user_id: users.first.id, training_id: t.id )
# file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
# s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
# s.save!
# puts "Speech created #{s}


# users.shift
# t = Training.create!( user_id: users.first.id )
# t.save!
# puts "Training created"


# s = Speech.new(transcript: '', user_id: users.first.id, training_id: t.id )
# file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
# s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
# s.save!
# puts "Speech created #{s}



# users.shift
# t = Training.create!( user_id: users.first.id )
# t.save!
# puts "Training created"


# s = Speech.new(transcript: '', user_id: users.first.id, training_id: t.id )
# file = URI.open('https://res.cloudinary.com/dpyl9bage/video/upload/v1646705662/development/ox3ps4nokhjokwezpdj5pklq72ii.webm')
# s.audio.attach(io: file, filename: 'speech_audio.webm', content_type: 'video/webm')
# s.save!
# puts "Speech created #{s}













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
