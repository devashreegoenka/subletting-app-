class AddStatusToApartments < ActiveRecord::Migration[7.1]
  def change
    add_column :apartments, :status, :string
  end
end
