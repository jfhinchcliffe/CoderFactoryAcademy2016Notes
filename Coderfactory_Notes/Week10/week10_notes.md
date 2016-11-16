# Week 10 Notes

## Using Postman and Rails API

Use postman to send a JSON object to a server. You can do this to request a list of objects, 
or to create one even.


## Helpful stuff
- heroku logs will bring you the latest Heroku logs to help with debugging
- byebug can be put in there to help show what values are being installed
- put ruby version in the top of the gemfile for heroku (eg '2.3.1')
- heroku run rails console will get you into the remote console on your heroku server

## AirStays
Every time - choose a discrete function to work on
checkout a branch for the feature - git checkout -b new_feature
make sure you know the problem - data types etc. you'll be working with



## Reading
Scopes in Ruby on Rails (for instance, 'hosts' in AirStays
present method: [prefix, name, country.name].select(&:present?).join(', ') #123 Example St, Melbourne, Australia
Active Relation. You can pass an active record relation to a 'where' method to scope down queries

# git - Anthony Cole presentation
anthonycole
generate an SSH key for a new laptop
ssh-keygen -t rsa
remove the git hidden file and it doesn't know it is a repository.
HomeBrew - can use this to install gitflow on mac

- research gitflow
- research elasticsearch
- research que

More than 3 devs becomes unwieldy. Start a new development branch
might also have a feature branch, release, hotfix and support branch

creating a feature and making a change

make a change 
check git status

git reet HEAD will resets to master

creat a pull request to add to a project. Person can review and merge

git remote prune origin removes branches that have been merged

- contribute to gems
- Don't use git add -A . Add each file individually. 
- Git add . will add what's been changed. But still... do each file individually.

