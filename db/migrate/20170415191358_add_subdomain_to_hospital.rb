class AddSubdomainToHospital < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :subdomain, :string
  end
end
