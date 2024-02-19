json.extract! user, :id, :email, :description, :first_name, :last_name, :encrypted_password, :created_at, :updated_at
json.url user_url(user, format: :json)
