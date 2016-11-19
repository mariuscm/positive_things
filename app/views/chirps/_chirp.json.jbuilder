json.extract! chirp, :id, :title, :content, :created_at, :updated_at
json.url chirp_url(chirp, format: :json)