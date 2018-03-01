class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
    	t.string 	:name, null: false
    	t.integer 	:style_id
    	t.integer 	:abv
    	t.integer 	:brewery_id, null: false
    	t.text 		:description
    	t.integer 	:quantity, null: false

    	t.timestamps
    end
  end
end
