# rails-agro-project

A simple garden and plant tracking web application with RESTful routes.

UPDATE [07/25/2019]: Now using Rails + JavaScript to render Gardens Index, Plants, and Comments

## Getting Started

Clone the repository down to your local environment using `git clone <repo>`

In terminal, do a `bundle install` command to install dependencies.

```
$ bundle install
```

Create the database using 'rake db:migrate' command.

```
$ rake db:migrate
```

Start up the app with `rails s` command

```
$ rails s
```

Navigate to http://localhost:3000/login in your browser.

Create a user by signing up either with email and password or omniauth through your GitHub account.

IMPORTANT: YOU MUST SIGN UP BEFORE SEEDING OTHERWISE THE DUMMY DATA WON'T SEED AND YOU WILL GET AN ERROR!

Once you've signed up, you can seed the dummy data with `rake db:seed` command.

```
$ rake db:seed
```

Seed data should now be displaying when you navigate to http://localhost:3000/user/1/gardens in your browser.

Enjoy! 🙂

## Built With

- [Ruby on Rails](https://guides.rubyonrails.org/)
- [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html)
- [devise](https://github.com/plataformatec/devise)
- [jQuery](https://api.jquery.com/)

## Contributing

Please read [CONTRIBUTING.md] for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

- **DARRENDAZ** - _Initial work_ - [DARRENDAZ]https://github.com/darrendaz/

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

- A huge THANK YOU! to Flatiron School and instructors for the lessons and labs to make this possible.
- Happy Hacking! 😄
