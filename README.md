# README

Hello, this is my submission for the technical challenge

My name is Mauricio Barros

Work hours: 16

The application does everything requested in the challenge description, the commits are separated by
requirement number

There are still things to be added, some misbehaviours to correct

But it is all functional.

Sessions with Devise OK

Bank CRUD OK

Provider CRUD OK

Model validations and requirements OK

Nested forms OK

Partials Usage OK

Regex usage OK

Dashboard OK

I18n OK

Tailwind OK


Test coverage: Models with validations

Not tested: Views, controllers

The darshboard has some mock fillers to make it look a bit more authentic, but the 2 main cards are
wired to the database, meaning the numbers are real data (Providers and Banks)

Dockerization is almost complete, still some configuration missing but I didn't have much time to spare
after completing all requirements

To get the project running:

Pre requisites:
  - bundler 2.4.8
  - ruby 3.1.3
  - rails 7.0.4.3
  - postgres

After cloning the repo run

```
  bundle install
```

Afterwards just run

```
  rails db:setup
```

And finally to get the server started

```
  bin/dev
```

To login, sign up with a new user, or you can use the admin credentials:

```
  email: admin@mail.com
  password: 123456
```

Hope to hear from you guys soon!

Best regards,

Mauricio
