# Week 9 - Uploading IMages
Store uploaded files away from the app server for security and performance reasons. 
The most popular gem for doing this is Carrierwave
Can use a backend with S3, raskspace, Google Storage, Cloudinary
require the gems

## Guest speaker - Sam

Keep ahead of the curve. Don't be precious. Get ready to pivot tonew languages.
Elixir language - check out?
Phoenix framework - check out?

## Day 2

## Pat building an AirBNB clone

## Day 3
Guest Speaker, Andrew Croome

Ruby without rails? 

Alternate frameworks: 
DOKKU - private heroku

Bad about rails:
Long term maintenance
Sprockets - Ditch and switch to webpack?
It's big - do you understand it all?

webpack frontend for rails? 

Australian solar map portal. Check out. Andrew works on it.

### recommended gems
friendly_id - cleaner slugs
que - background processing library. Purely postgres based. Can't lose a job because it's in your database
slim_rails - Alternative to HAML. SLIM is nicer. Get used to it. 
simple_form
meta-tags - put it in controller, use it to display the following OG tags in the website for Facebook / social networks.
sitemap-_generator - for google results. Will go through your site and submit to Google and Bing
devise
rolify

bundle open 'GEMNAME' - this will open the gem code in front of you and see what it does.

##Understanding rails by understanding another framework

Other frameworks
- sinatra
- hanami
- roda - recommended to look at first
- dry-rb - framework IceLabs have switched to

Rails generally violates the single responsibility rule. 

Techniques for making code singly responsible

Decorators if you have an object, wrap in decorator and it contains methods to call. if it can't respond, it forwards it to class it's from
decorates an object ... augments an object with additonal functionality.

Dry-Rb
- a collection of next gen ruby libraries
- IceLabs have gotten onto this. 

## Webpack - rails gem

ready
- Ruby weekly
- RailsCasts
- Ruby Tapas
- Sandy Metz

## Testing
test public methods of that class with a unit test

integration tests - drive around site and check on stuff
circle ci - continuous integration 
learn git and pull requests





