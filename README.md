# bookstore-api

This README outlines the details of collaborating on this Rails application.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Ruby](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html) (with rvm)
* [Rails](https://rubyonrails.org/)
* [ngrok](https://ngrok.com/download)

## Installation

* `git clone <repository-url>` this repository
* `cd book-rails`
* `bundle install`
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`


## Running / Development

* Copy .env.sample to .env 
* Set your database and github credentials into `.env`
* `rails s`
* In another terminal `./ngrok http 3000`
* [Create a webhook](https://developer.github.com/webhooks/creating/) in your github and use ngrok url as a Payload URL and set Content-Type as application/json.
* `rake github_issues:populate` to sync database authors with github issues
