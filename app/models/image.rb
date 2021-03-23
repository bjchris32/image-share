class Image
  include Mongoid::Document
  field :title, type: String
  field :authentication_token, type: String

  validates_uniqueness_of :authentication_token
end
