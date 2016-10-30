# Week 6 - Intro to Rails, Databases, Models, Github

## Day 1 - Basic template theme into rails.
To make sure your gems are updated: ```gem update rails```
To check version of rails: ```rails -v```

Taking the [Shield](http://blacktie.co/2014/02/shield-one-page-theme/) theme and putting it into a rails app

### Including other models / forms
You can use a form as a partial in another controller. Simply call the partial, and pass the relevant object to the view from the controller. Didn't know you could do that!

## Day 2 - Databases

Reduce data duplication by linking efficiently

Database normalisation - eliminates redundancy and organises data efficiently

[Intro to DB design on Rails](https://quickleft.com/blog/introduction-to-database-design-on-rails/)
[High Scalability blog](http://highscalability.com/)

Split data out to a granular level
split tables out so they only describe one particular thing
Relate each item uniquely
Don't pollute tables with foreign keys where you don't have to


## Day 3 - Models

Models are Ruby classes. THey talk to database, store and validate data, perform business logic.
