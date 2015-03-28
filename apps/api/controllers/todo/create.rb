module Api::Controllers::Todo
  class Create
    include Api::Action

    params do
      param :body
    end

    def call(params)
      CreateTodo.new(params).call
    end
  end
end
