json.extract! invoice, :id, :user, :doctor, :amount, :invoice_number, :notes, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
