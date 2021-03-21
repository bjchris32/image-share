class User
  include Mongoid::Document
  field :name, type: String
  field :github_id, type: String
end
