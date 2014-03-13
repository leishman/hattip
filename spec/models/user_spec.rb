require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }

  it "validates basic email format" do
  	user_1 = User.new(password: '12345678', password_confirmation: '12345678', email: 'testexample.com')
  	user_2 = User.new(password: '12345678', password_confirmation: '12345678', email: 'test@example.com')
  	expect{ user_1.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	expect{ user_2.save! }.to change{ User.count }.by(1)
  end

  it { should have_many :posts }

  it { should have_one :location }
  
  it { should have_one :profile }

  it "validates presence of password" do
  	user = User.new(password: '', password_confirmation: '', email: 'test@example.com')
  	expect{ user.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "requires a strong password" do
  	user = User.new(password: '1234567', password_confirmation: '1234567', email: 'test@example.com')
  	expect{ user.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "requires a strong password" do
  	user = User.new(password: '12345678', password_confirmation: '12345678', email: 'test@example.com')
  	expect{ user.save! }.to change{ User.count }.by(1)
  end

  it "requires password and password_confirmation to match" do
  	user = User.new(password: '12345678', password_confirmation: '22345678', email: 'test@example.com')
  	expect{ user.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end
end