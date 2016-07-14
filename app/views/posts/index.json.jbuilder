json.array!(@posts) do |post|
  json.extract! post, :id, :category, :title, :published_at, :user_id, :author, :slug, :payload, :content
  json.url post_url(post, format: :json)
end
