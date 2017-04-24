class AddImagesToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :home_image1, :string
    add_column :hospitals, :home_image2, :string
    add_column :hospitals, :address, :text
  end
end
