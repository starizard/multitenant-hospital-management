json.extract! report, :id, :doctor_id, :user_id, :pdate, :ptime, :notes, :prescription, :created_at, :updated_at
json.url report_url(report, format: :json)
