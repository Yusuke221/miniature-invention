json.extract! user, :id, :name, :nationality, :point, :created_at, :updated_at
json.url user_url(user, format: :json)