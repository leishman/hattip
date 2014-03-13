require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :encrypted_password }
  it { should have_many :posts }
  it { should have_one :location }
  it { should have_one :profile }
end