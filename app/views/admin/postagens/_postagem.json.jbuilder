json.extract! postagem, :id, :titulo, :data, :created_at, :updated_at
json.url postagem_url(postagem, format: :json)
