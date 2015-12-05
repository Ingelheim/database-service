class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :yelp_id
      t.string :name
      t.string :url
      t.string :rating
      t.string :image_url
      t.string :display_address
    end
  end
end
