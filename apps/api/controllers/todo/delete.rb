module Api::Controllers::Todo
  class Delete
    include Api::Action

    params do
      param :id, presence: true
    end

    def call(params)
      @todo = TodoRepository.find(params[:id])
      TodoRepository.delete(@todo)
    end
  end
end
