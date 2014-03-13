class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.belongs_to 	:user

    	t.string			:city
    	t.string			:state
    	t.string			:country
    	t.integer			:zip_code
    	t.integer			:latitude
    	t.integer			:longitude

    	t.timestamps
    end
  end
end
