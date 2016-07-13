json.array!(@entries) do |entry|
  json.extract! entry, :id, :string, :string, :string, :string, :integer, :string, :datetime
  json.url entry_url(entry, format: :json)
end
