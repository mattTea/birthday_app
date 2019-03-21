Birthday App
============

## Description

A Ruby web app that asks the user for their name and birthday, and gives a message with the number of days until their birthday, or a congratulations message.


#### Technologies used

- Ruby
- Rspec (test framework)
- Sinatra (Ruby web framework)
- Rackup (Ruby web app middleware) -> _describe why I need this as well as Sinatra_
- Capybara (web feature test library)



#### Personal motivation

- ...


## Steps to download

- ...


## Steps to run

- ...


## To run tests

- ...


## My approach

1. Write user stories
2. Breakdown problem
3. Set up `spec_helper.rb` to work with capybara
    - Don't forget to include `config.include Capybara::DSL` in config

4. Set up `config.ru` to enable rackup to run app
5. Write first feature test - testing `home (/)` route
    - Watch it pass

6. Write second feature test
    - `enter_birthday` form


#### Structure

- Controller: `app.rb`
- Views: `views/<name>.erb`
- Models: ...


#### User stories

```
User story 1: Enter details
---------------------------
As a user,
So that I can see personalised messages,
I want to be able to enter my name and birthday.


User story 2: Countdown
-----------------------
As a user,
So that I can count down to my celebration,
I want to see how many days there are until my birthday.


User story 3: Happy birthday!
-----------------------------
As I user,
So that I feel good on my birthday,
I want to receive a happy birthday message.
```


#### Problem breakdown

Object | Messages
--------------- | --------------------
user | 
birthday_date | countdown
birthday_date | give_message


When the user submits the form, and depending on the current date, the app will either:

wish the user happy birthday
tell them how long they'll have to wait until their next birthday


[Original challenge repo](https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md)