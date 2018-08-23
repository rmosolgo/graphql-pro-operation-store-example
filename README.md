# GraphQL Pro Operation Store Demo

A running demo of [persisted operations with GraphQL-Ruby](#)

You can trigger GraphQL queries via the UI:

![operation-store-demo](https://user-images.githubusercontent.com/2231765/44499461-ec310f00-a651-11e8-91f8-e1fdb1911bd0.gif)

But only the operation ID and variables are sent over the wire:

<img width="926" alt="image" src="https://user-images.githubusercontent.com/2231765/44499396-a96f3700-a651-11e8-8702-cc27a65a658d.png">

## Setup & Dev

- Clone the repo: `git clone git@github.com:rmosolgo/graphql-pro-operation-store-example.git && cd graphql-pro-operation-store-example`
- Configure your graphql-pro credentials: `bundle config gems.graphql.pro your-credential-here`
- Install dependencies: `bundle install && yarn install`
- Prep the database: `bundle exec rake db:migrate db:seed`
- Sync the operations: `yarn run sync-graphql`
- Start the server: `bundle exec rails s`
- Visit http://localhost:3000/
