![](https://img.shields.io/badge/Microverse-blueviolet)

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white) ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)

# Exploration-Getaways-BACKEND

Exploration Getaways is a travelling application where the user can register new accounts, login and book a set of different trip packages. It is built and connected by using two different repos, including back-end(Rails) and front-end(React/Redux).

# FRONTEND project

[Repository link](https://github.com/Nyame-Wolf/Exploration-Getaways-FRONTEND)

# Quick view

![](./assets/images/readme2.jpg)
![](./assets/images/readme3.jpg)
![](./assets/images/readme4.jpg)
![](./assets/images/readme5.jpg)

# Live Demo Version

Loading

## Getting Started

- Check the Ruby version or if you have at all by running `ruby -v` if you get something like this `ruby 2.6.8p205 (2021-07-07 revision 67951)` you have Ruby installed.
- Clone the repository by running `git clone https://github.com/VitorGuedesMadeira/Exploration-Getaways-BACKEND.git` in your CLI.
- Type `cd Exploration-Getaways-BACKEND`
- Type `code .`
- Run `bundle install`

# NOTE you need to have a master key in config directory. If none exists generate one. 
      - First delete `credentials.yml.enc`
      - Run EDITOR="code" bundle exec rails credentials:edit 

- Run `rails db:create db:migrate`
- Optionally you can run `rails db:seed` to populate it
- Run `rails server` to open the local server
- Open Browser `http://localhost:4000/`

# API documentation

[Documentation link](http://localhost:4000/api-docs/)
![](./assets/images/readme1.png)

# Kanban Board

Click here to open the [Kanban Board](https://github.com/Nyame-Wolf/Exploration-Getaways-FRONTEND/projects/1)

[Backend - initial state](https://user-images.githubusercontent.com/103270117/203678348-d2b7954f-e5a9-473d-a33c-22eeee83daf5.png)

[Frontend - initial state](https://user-images.githubusercontent.com/103270117/203832807-99205b68-c036-4bed-8cc3-7482ee46b7db.png)

## Testing

- Run `rspec`

## Authors

👤 **Vitor Guedes Madeira** 🧑🏻‍💻
- GitHub: [@vitorguedesmadeira](https://github.com/VitorGuedesMadeira)
- Twitter: [@CDahguedes](https://twitter.com/CDahguedes)
- LinkedIn: [Vitor Guedes](https://www.linkedin.com/in/vitor-guedes-madeira/)

👤 **Mumenya Nyamu** 🧑🏻‍💻

- GitHub: [@Nyame-Wolf](https://github.com/Nyame-Wolf)
- Twitter: [@mumenyam](https://twitter.com/Mumenyam)
- LinkedIn: [Mumenya Nyamu](https://www.linkedin.com/in/mumenya-nyamu-software-engineer/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/VitorGuedesMadeira/Exploration-Getaways-BACKEND/issues).

## Show your support

Give a ⭐️ if you like this project!

## Design Template

- We give credit to [Murat Korkmaz on Behance](https://www.behance.net/muratk) the author of the [original design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)

## 📝 License

This project is [MIT](./MIT.md) licensed.
