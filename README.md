## IMDB hasn't open-sourced their personalized movie recommendation engine, so I coded one from scratch

### My name is Dan Serban and this is MovieRecommender, my Hackover project.

### Vital stats

MovieRecommender is a web application written in Ruby that aims to replicate IMDB's personalized recommendation engine.
The philosophy underlying the development of the application was three-fold:
- Fat Model, Skinny Controller (the complexity has been pushed as far as possible out of the controller and into the model, to get extra "bang for the buck" from test-driving)
- RED-GREEN-REFACTOR (as far as possible, the approach was to **first** write tests, demonstrate test failure, and **only then** write the absolute minimum amount of code to make those tests pass);
- Analysis of taste in movies lends itself very well to a lightweight flavor of MapReduce, so that's the approach I took.

### Installation instructions

Make sure you have Ruby installed (I developed MovieRecommender on RVM with Ruby version 1.9.3).

Clone the repository and `cd` into that directory and run the command to install the required Ruby gems:

```
git clone https://github.com/dserban/MovieRecommender.git
cd MovieRecommender
bundle install
```

Should there be a file called `dev.db` (the SQLite development database) in that directory, make sure to delete it:

```
ls dev.db && rm dev.db
```

Build the database and seed it with data:

```
rake db:migrate && rake db:seed
```

Note: The above process may take awhile on a slow machine, like a netbook.

Run the server:

```
rackup
```

The application can now be accessed from your browser at [this URL](http://127.0.0.1:9292/).

At the top right-hand corner, switch from the current account (GuestUserAccount) to the user nicknamed "XenaWarriorPrincess" and click on the button called "I want personalized movie recommendations".

You will notice a specific pattern regarding Xena's taste in movies: it tends to revolve around mellow, "romanticized" films.

If you now go into Xena's page called "movies she has rated" and change her tastes from "romanticized" to "action-packed" (by "inverting her ratings"), and visit again her personalized recommendations page, you will notice a significant shift in the nature ofthe recommended movies.

