class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.belongs_to 	:user

      t.boolean :verified
      t.string	:name
    	t.string	:tagline
    	t.string	:twitter_handle
    	t.text		:story
    	t.string	:highlight_video_url
    	t.string	:profile_photo_url
    	t.string	:category

    	t.timestamps
    end
  end
end
