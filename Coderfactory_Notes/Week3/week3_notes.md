# Week 3 Notes!

##Monday

### Creating a Fantasy Football Application

## Fantasy Football app

AS A __ I WANT ___ SO THAT

AS AN artist I WANT to upload my file SO THAT I can sell it online

*Problem*
- User wants to simulate the result of a football game without having to play.
*Actions*
- Create teams (with stats)
- Save teams
- Simulate games between teams
- Save results to file
*User Stories*
- As a user, I want to be able to enter team information
- As a user, I want to simulate a game and save the results

##Setup

_Classes_
Team
  - name
  - attack
  - defense
  - weather_preference (1 (dry)-10(wet))
  - luck
  - home_ground

*Game*
(takes home team, away team, )
  - result (saves to file)
Methods
  - Play game
  - save result

*Ground*
  - name
  - weather (dry, wet)
Methods
  - set weather

_Modules_  
*Menu*
  (Display amount of teams in competition)
  Simulate Game
  See Results
  See all teams
  Create Team
  Delete Team
  Edit Team
  New Season
2 file s- past season and current season.

## Craig Barlow
### Senior UX Advisor at NinTEX
26 September 2016
Why your studies are meaningless
UX - creating an engaging and rewarding customer experience
Less about great and more about doesn't suck
People don't care about you or your product. It's a means to get something done.
Not a designer - a facilitator

Work with everyone to facilitate a result
- technically possible
- what people actually need
- mockup
- feasible
- constant feedback
- voice of reason (not filling in 50 fields)

Qualitative - what does the user do behaviourally
Quantitative - market reasearch, big numbers, stats

### UX / Agile
UX has a mandate to understand the vision of the product
Keep the product relevant for the end user. If things change, bring that change to the product.

### What I've learnt
- communication is everything
  - good developers communicate well. Can't see the forest for the trees and consider the user.
- Perception of what you do is more important than what you actually achieve.


### Research - Surveys and Affinity Diagrams and Analytics and Interviews and User Testing

Ask people what they do - don't assume.

### Information mapping / card sorting
work out patterns

### Analysing and sharing

## Glenn Gillen
### Worked at Heroku / Investor in Stamplay / StackShare /
26 September 2016
Built the add ons system at Heroku

Advice
- Desire to teach. Write documentation and explain the process.
- Look to solve a problem you've experienced yourself.
- Expectation from juniors - pretty low expectations, cross train, aptitude for learning, writing tests and making them pass
- TDD
- Pick a text editor. RSPEC. talk about why. Thought behind your choices. Make sure you have a reason that you use what you use.
- A tipping point in Melbourne is coming where senior talent dries up and companies actually have to recruit and retrain juniors.

## Things I've Googled
Find a value within array of hashes ruby
http://stackoverflow.com/questions/1514883/determine-if-a-value-exists-in-an-array-of-hashes
```
array_of_hashes.any? {|h| h[:a] == 11}
```

Regex Ruby allow only numbers
http://stackoverflow.com/questions/9903607/regular-expression-for-only-allow-numbers-and-must-end-with-sign
```
/^[0-9]+$/
```

CSV ruby
https://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html

ruby next if
`next if (i % 2) == 0` basically means skip any even numbers.

rspec install new ruby project
https://semaphoreci.com/community/tutorials/getting-started-with-rspec

ruby match to terminal output
http://stackoverflow.com/questions/16507067/testing-stdout-output-in-rspec
expect { my_method }.to output("my message").to_stdout

Rspec mocking up objects
https://www.relishapp.com/rspec/rspec-mocks/docs

Create if not already there
value ||= 8
If value isn't already created, then create a new one and set it to 8.

Using the yield function

Working with JSON in Ruby
https://hackhands.com/ruby-read-json-file-hash/

RSPEC basics
https://semaphoreci.com/community/tutorials/getting-started-with-rspec

```
require 'csv'

module UniqueNumber
  def self.row_for(id)
    # Returns first matching with id, or nil if not found
    csv_table.find do |row|
      row[:id] == id.to_s
    end
  end

  def self.next_number_for(id)
    row = row_for id
    return nil if row.nil?
    row[:next_number]
  end

  def self.increment_number_for(id)
    row = row_for id
    if row
      # Update existing row
      row[:next_number] += 1
    else
      # Add new row
      csv_table << [id, 1]
    end

    # Table updated, so write to file
    write
  end

  private
    FILE_PATH = './unique_number.csv'

    def self.csv_table
      # Create table once if not already created, and return
      @csv_table ||= CSV.table(FILE_PATH).by_row!
    end

    def self.write
      File.write FILE_PATH, csv_table
    end
end
```
## Jenny Tran - Presenter -

Student at General Assembly
Works at Carter Digital (Junior Web Dev)
Used to work at Seamless (GovTech startup)

What do you wish you'd learned / concentrated on before starting?

How have your cohorts from GA gone

## Blogs
- Where's Boss
- Practical Dev

## Meetups
- I look like a developer meetup

## Tips
- Familiarise yourself with the tools you're using
- Web accessibility WCAG
- Don't Repeat Yoursel DRY
- !important in front end is EVIL
- Avoid using <table></table> for HTML layouts. Increases pageload, hinders rendering, difficult to style, makes it a bitch for screenreader to articulate.
- Use meaningful / reusable classes where possible. (www.instagram-brand.com)


### Reading
What is Grunt / Gulp?
