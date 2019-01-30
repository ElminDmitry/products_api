# README

## Requirements

This template currently works with:

* ruby 2.5.1

If you need help setting up a Ruby development environment, check out my [Rails OS X Setup Guide](https://mattbrictson.com/rails-osx-setup-guide).

## Installation
```
git clone git@github.com:ElminDmitry/products_api.git
cd products_api
bundle install
rails db:migrate
rails s
```
## Usage
Products can be accessed by `localhost:3000/products?producer=producerName`

You can pass `page` `per_page` HTTP params for pagination
