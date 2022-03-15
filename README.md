# MyEnglishSpeech
<p align="left">An app for non-native English speakers to practice creating English speeches and get feedback from native English teachers. Student users record their voice and upload audio files. Teachers listen and re-record the same speech with corrected English. Built with Ruby on Rails and Javascript for the media recording.</p>

![student speech](https://user-images.githubusercontent.com/59186645/158356407-e58ce9e5-99a7-4015-8593-820af33f8523.png)

## Installing locally :computer:
### Setup
##### Install gems
```
bundle install
```
##### Install JS packages
```
yarn install
```

### ENV variables
##### Create `.env`
```
touch .env
```
##### Inside `.env`, set these variables
```
CLOUDINARY_URL=cloudinary://your_key
STRIPE_PUBLISHABLE_KEY=your_key
STRIPE_SECRET_KEY=sk_test_your_key
STRIPE_WEBHOOK_SECRET_KEY=your_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run your server

```
rails s
```


## Our Team
* [Andrei Mori](https://github.com/andreicodenz)
* [Risako Nagai](https://github.com/Risako03)
* [Taylor Mravic](https://github.com/tmravic)
