require 'spec_helper'

describe Post do
  it { should belong_to :user }
  it { should validate_presence_of :youtube_url }
  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_least(4).is_at_most(50) }
  it { should have_db_column :title }
  it { should have_db_column :youtube_url }
  it { should have_db_column :description }
end