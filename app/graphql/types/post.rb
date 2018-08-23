class Types::Post < Types::BaseObject
  field :content, String, null: false
  field :person, Types::Person, null: false
end
