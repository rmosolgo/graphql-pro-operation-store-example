class AppSchema < GraphQL::Schema
  query(Types::Query)
  mutation(Types::Mutation)
  use GraphQL::Pro::OperationStore
end
