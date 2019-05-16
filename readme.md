### *Zero Déchet*

- [x] créer une app (`rails new -d postgresql ZERODECHET`)
- [x] *(l'enregistrer sur git)*
  - git init
  - git remote add origin https://github.com/LaurieAnnieClemence/ZERODECHET.git
  - git add .
  - git commit -m "rails init"
  - git push -u origin master 

- [x] *(l'enregistrer sur heroku)*
  - heroku apps:create zerodechet
  - heroku git:clone -a zerodechet
  - git push heroku master

- [x] créer une base de donnée (`rails db:create`)


- [x] créer LA base de donnée [📝](https://guides.rubyonrails.org/getting_started.html#creating-articles)
  - rails generate model .........
  - ..............................
  - rails db:migrate
