json.array!(@bbusinesses) do |bbusiness|
  json.extract! bbusiness, :id, :name, :address, :webpage, :string
  json.url bbusiness_url(bbusiness, format: :json)
end
