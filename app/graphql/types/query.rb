class Types::Query < Types::BaseObject
  field :people, [Types::Person], null: false

  def people
    ::Person.all
  end
end
