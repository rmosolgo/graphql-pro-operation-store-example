class Mutations::AddPost < Mutations::BaseMutation
  argument :handle, String, required: true
  argument :content, String, required: true
  field :post, Types::Post, null: true

  def resolve(handle:, content:)
    person = Person.find_by(handle: handle)
    # TODO handle errors :P
    post = person.posts.create!(content: content)
    { post: post }
  end
end
