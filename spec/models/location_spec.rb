require 'spec_helper'

describe Location do
	it { should belong_to :user }
  it { should have_db_column :city }
  it { should have_db_column :state }
  it { should have_db_column :country }
  it { should have_db_column :latitude }
  it { should have_db_column :longitude }
end
