class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :position
      t.date :joined
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
