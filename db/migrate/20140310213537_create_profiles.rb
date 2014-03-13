class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.belongs_to 	:user
    	t.text				:story
    	t.string			:highlight_video_url
    	t.string			:profile_photo_url

    	t.timestamps
    end
  end
end
