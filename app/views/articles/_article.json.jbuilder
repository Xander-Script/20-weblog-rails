json.extract! article, :id, :title, :body, :published, :published_at, :author_id, :created_at, :updated_at
json.url article_url(article, format: :json)
