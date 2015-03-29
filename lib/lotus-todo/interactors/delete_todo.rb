require "lotus/interactor"

class DeleteTodo
  include Lotus::Interactor

  def initialize(todo)
    @todo = todo
  end

  def call
    @todo = TodoRepository.delete(@todo)
    fail! if persisted?(@todo)
  end

  private

    def persisted?(todo)
      !!@todo.id
    end
end
