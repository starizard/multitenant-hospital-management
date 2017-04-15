class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :dname
      t.string :description

      t.timestamps
    end
  end
end
