module Api::Controllers::Todo
  class Create
    include Api::Action
    accept :json

    before :validate_params

    params do
      param :body, presence: true
    end

    def call(params)
      CreateTodo.new(params).call

      self.status = 201
      self.body = {}
    end

    private

      def validate_params
        halt 422 unless params.valid?
      end
  end
end
