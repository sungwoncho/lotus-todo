require "lotus/interactor"

class CreateTodo
  include Lotus::Interactor

  def initialize(params = {})
    @todo = Todo.new(params)
  end

  def call
    @todo = TodoRepository.persist(@todo)
    fail! unless persisted?(@todo)
  end

  private

    def persisted?(todo)
      !!@todo.id
    end
end
