require "lotus/entity"

class Todo
  include Lotus::Entity
  attributes :body, :created_at, :updated_at
end
