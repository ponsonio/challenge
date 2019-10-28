json.extract! employee, :id, :names, :last_name, :email, :gender, :created_at, :updated_at
json.url employee_url(employee, format: :json)
