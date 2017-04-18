class AddDepartmentToDoctor < ActiveRecord::Migration[5.0]
  def change
    add_reference :doctors, :department, foreign_key: true
  end
end
