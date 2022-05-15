# README

A small Question and Answers website for multiple users.

Things you may want to cover:

* Ruby version : 3.0.0
* Rails version : 7.0.1

### Steps to install the repo

1. Install Ruby 3.0.0 using `rvm` or `rbenv`.

2. Install Rails 7.0.1.

3. Run `rake db:setup`.

4. Run `rake db:migrate`.

### Running the app on local

1. Open terminal and navigate to project directory. Run `rails s` to start the server.

2. The page navigate to Sign in form.

3. Click on Sign up (for new users) by adding email, password and password confirmation.

4. We should land on questions index page after sign up (same flow for sign in).

5. Add question and the answers to it.

6. CRUD functionality should work.

### Things too add / Future scope

1. Pundit policy checks.

2. Improve UI using bootstrap or Tailwind CSS.

3. Admin dashboard.

4. Adding test cases.

### Gems used

1. Devise for user authentication.

2. Interaction gem for handling business logic. Please refer `CreateQuestion` and `CreateAnswer` classes.
