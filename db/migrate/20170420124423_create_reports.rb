class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :doctor, foreign_key: true
      t.references :user, foreign_key: true
      t.date :pdate
      t.time :ptime
      t.text :notes
      t.text :prescription

      t.timestamps
    end
  end
end
