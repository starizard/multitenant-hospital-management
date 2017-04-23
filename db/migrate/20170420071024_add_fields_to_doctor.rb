class AddFieldsToDoctor < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :about, :text
    add_column :doctors, :qualification, :text
    add_column :doctors, :available, :boolean
    add_column :doctors, :joined, :date
    add_column :doctors, :phone, :string
    add_column :doctors, :position, :string
  end
end
