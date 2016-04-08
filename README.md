# Sphinx Example
Example of real-time search UI creating stats based on search results

## How it works
* A PostgreSQL DB has 5000 of fake articles
* Searcher UI calls the Sphinx Index and render the number of found articles
* A background worker runs each 5 minutes and creates a list of most searched terms

## Setting up the project
**Dependencies**

* Ruby 2.2.3
* Ruby on Rails 4.2.6
* PostgreSQL 
* MySQL
* Sphinx
* Sidekiq

**Installing Sphinx**  

```shell
brew install mysql
brew install sphinx --mysql --pgsql
```

**Setup DB and Index**
```shell
bundle install
rake db:create 
rake db:migrate
rake db:seed
rake ts:index
```

## Running
```shell
  unicorn
```
Go to http://localhost:8080

## Testing
```shell
  bundle exec rspec
```
