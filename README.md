# 💎 Ruby on Rails API Boilerplate
This repository serves as a boilerplate for my personal Ruby on Rails projects. It provides a solid foundation with essential features to streamline development and ensure best practices. I use this setup regularly as it helps me kickstart projects quickly while maintaining a high standard of quality.

## Features
- Endpoints with grape cover with tests
- Models cover with tests
- Services cover with tests
- Workers using sidekiq cover with tests
- Mailer
- Error handler
- Initial seed
- Demo rake task
- Docker integration
- Swagger

## Requirements
- Docker
- Docker Compose

## Installation
1. Replace all matches with `RAILS_API_BOILERPLATE`, `rails_api_boilerplate`,  `RailsApiBoilerplate` and `rails-api-boilerplate` to desired name 
2. Create a ```.env``` file in the root of your project by copying the ```.env.example``` file. Edit the newly created ```.env``` file to include your Telegram bot token and any other necessary configuration variables.
3. Run:
```bash
docker-compose build && docker-compose up
```
## CheatSheet

### Run server
In two diferent consoles run:
```ruby
bundle exec sidekiq start
```
```ruby
rails s 
```
or
```ruby
rails server -p 3000
```
### Run tests
```ruby
rails spec exec "path:line"
```
### Run rubocop autofix
```ruby
rubocop -a "path"
```
### Run console 
```ruby
rails c
```
### Run migration
```ruby
rails db:migrate RAILS_ENV=development
```
### Run task
```ruby
rake task_name
```
### Reset DB
```ruby
rails db:drop db:create db:migrate db:seed_fu RAILS_ENV=test
```
### Force from console execute Job
[Stackoverflow](https://stackoverflow.com/questions/44144686/why-isnt-my-rails-worker-executing
)
```ruby
DonationMailerWorker.new.perform(Donation.last.id)
```
### Start quick
```bash
./start.sh
```

Give permissions
```bash
chmod +x start.sh
```
### Others
```ruby
rails generate model Comment commenter:string body:text article:references
```

```ruby
rails generate controller Comments
```
```ruby
rails g scaffold company name:string city:string
```

## Swagger
http://localhost:3000/v1/swagger_doc
https://petstore.swagger.io/

## Docker
Show containers
```bash
docker ps
```
Attach to container 
```bash
docker attach "container-name"
```
Open container console
```bash
docker exec -it "container-name" bash
```