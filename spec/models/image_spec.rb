require 'rails_helper'

RSpec.describe Image, :type => :model do
  it { should validate_uniqueness_of(:authentication_token) }
end
