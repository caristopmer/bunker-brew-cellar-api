class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
    	t.integer 	:beer_id, null: false

    	t.timestamps
    end
  end
end
