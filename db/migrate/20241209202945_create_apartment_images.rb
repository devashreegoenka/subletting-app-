class CreateApartmentImages < ActiveRecord::Migration[7.1]
  def change
    create_table :apartment_images do |t|
      t.integer :apartment_id
      t.string :image_url

      t.timestamps
    end
  end
end
