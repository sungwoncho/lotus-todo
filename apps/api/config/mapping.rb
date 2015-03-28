collection :todos do
  entity     Todo
  repository TodoRepository

  attribute :id,         Integer
  attribute :body,       String
  attribute :created_at, DateTime
  attribute :updated_at, DateTime
end
