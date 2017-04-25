class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
 def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_index :users, :confirmation_token, unique: true
    execute("UPDATE users SET confirmed_at = NOW()")

    add_column :hospitals, :confirmation_token, :string
    add_column :hospitals, :confirmed_at, :datetime
    add_column :hospitals, :confirmation_sent_at, :datetime
    add_index :hospitals, :confirmation_token, unique: true
    execute("UPDATE hospitals SET confirmed_at = NOW()")

    add_column :doctors, :confirmation_token, :string
    add_column :doctors, :confirmed_at, :datetime
    add_column :doctors, :confirmation_sent_at, :datetime
    add_index :doctors, :confirmation_token, unique: true
    execute("UPDATE doctors SET confirmed_at = NOW()")

  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_columns :hospitals, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_columns :doctors, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end
