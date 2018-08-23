# Include GraphQL::Pro's routing extensions:
using GraphQL::Pro::Routes

Rails.application.routes.draw do
  get "/", to: "home#show"
  post "/graphql", to: "graphql#query"
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  # Add the Dashboard
  # TODO: authorize, see the dashboard guide
  mount AppSchema.dashboard, at: "/graphql/dashboard"
  # Add the Sync API (authorization built-in)
  mount AppSchema.operation_store_sync, at: "/graphql/sync"
end
