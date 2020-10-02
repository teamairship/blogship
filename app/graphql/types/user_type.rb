class Types::UserType < Types::BaseObject
  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :role, String, null: false
  field :posts, [Types::PostType], null: false
end
