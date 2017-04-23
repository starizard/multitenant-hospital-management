class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :user
      t.string :doctor
      t.integer :amount
      t.string :invoice_number
      t.text :notes

      t.timestamps
    end
  end
end
