class Invoice < ApplicationRecord
  validates :user, presence: true
  validates :doctor, presence: true
  validates :amount, presence: true
  validates :invoice_number, presence: true

end
