class CreateApartments < ActiveRecord::Migration[7.1]
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :rent
      t.string :availability_start_date
      t.string :availability_end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
