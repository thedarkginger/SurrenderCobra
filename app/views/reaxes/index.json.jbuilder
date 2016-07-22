json.array!(@reaxes) do |reax|
  json.extract! reax, :id, :user, :username, :post, :submission, :upvotes
  json.url reax_url(reax, format: :json)
end
