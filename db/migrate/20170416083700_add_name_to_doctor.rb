class AddNameToDoctor < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :name, :string
  end
end
