json.extract! appointment, :id, :appointment_date, :appointment_time, :user_id, :doctor_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
