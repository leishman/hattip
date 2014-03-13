class Post < ActiveRecord::Base
	belongs_to :user
	validates :youtube_url, presence: true
	validates :title, presence: true, length: 4..50

	def thumbnail_url
		YoutubeBuddy.new(youtube_url).thumbnail_url
	end
end