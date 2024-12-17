class AddManualAvailabilityToApartments < ActiveRecord::Migration[7.1]
  def change
    add_column :apartments, :manual_availability, :boolean
  end
end
