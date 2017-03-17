class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :phone_number
    	t.string :email
    	t.string :street_address
    	t.string :city
    	t.string :state
    	t.string :zip

    	t.timestamps
    end
  end
end
