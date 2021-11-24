
# Ruby on Rails - Blog

The purpose of this repository is only for studies on Ruby on Rails.

## Basic installation

If you already have the environment necessary for Ruby on Rails to work, skip these steps of primary installation.

* sudo apt install ruby-bundler
* sudo apt install ruby-dev
* sudo apt-get install -y sqlite3 libsqlite3-dev
* sudo bundle install

Probably optional, but if necessary

* gem install solargraph
* gem install htmlbeautifier

Then:

* rails db:migrate

* rails s -p <port_number>
"example: rails server -p 3001"

### README - original from rails, not explored

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Original repository

https://gitlab.com/brunopetinati/blog-on-rails

### Personal notes

(To rollback or undo the changes made by the last migration file that was run)
rails db:rollback

(To generate a new migration file to add or make changes to your articles table you can generate a new file:)
rails generate migration name_of_migration_file
