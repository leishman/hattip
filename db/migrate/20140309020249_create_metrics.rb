class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
    	t.integer	:fb_likes
    	t.integer	:clicks
    	t.integer	:views
    end
  end
end
