class AddImageToDoctor < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :image, :string
  end
end
