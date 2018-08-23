class Types::Person < Types::BaseObject
  field :handle, String, null: false
  field :posts, [Types::Post], null: false
end
