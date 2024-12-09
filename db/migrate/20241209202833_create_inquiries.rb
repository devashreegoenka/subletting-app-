class CreateInquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :inquiries do |t|
      t.string :messaage
      t.integer :apartment_id
      t.integer :asker_id
      t.integer :answerer_id

      t.timestamps
    end
  end
end
