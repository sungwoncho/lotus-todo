module Api::Controllers::Todo
  class Index
    include Api::Action
    accept :json

    def call(params)
      posts = TodoRepository.all
      self.body = Api::Presenters::Todos::Index.new(posts).render
    end
  end
end
