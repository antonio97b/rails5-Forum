json.extract! forum, :id, :name, :description, :created_at, :updated_at
# json.extract! forum, :id, :name, :description, :references, :created_at, :updated_at
json.url forum_url(forum, format: :json)