json.extract! request, :id, :request_type, :created_at, :updated_at
json.url request_url(request, format: :json)
