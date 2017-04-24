class AddLogoToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :logo, :string
  end
end
