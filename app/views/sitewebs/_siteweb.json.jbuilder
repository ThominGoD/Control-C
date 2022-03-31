json.extract! siteweb, :id, :image, :name, :tag, :url, :description, :created_at, :updated_at
json.url siteweb_url(siteweb, format: :json)
