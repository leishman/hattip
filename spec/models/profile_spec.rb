require 'spec_helper'

describe Profile do
	it { should belong_to(:user) }
	it { should have_db_column(:story) }
	it { should have_db_column(:highlight_video_url) }
	it { should have_db_column(:profile_photo_url) }
end