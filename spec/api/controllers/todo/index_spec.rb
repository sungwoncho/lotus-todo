require 'spec_helper'

describe Api::Controllers::Todo::Index do
  let(:action) { Api::Controllers::Todo::Index.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  it 'returns all todos' do
    _todo = Todo.new(body: 'Get some milk')
    TodoRepository.persist(_todo)
    @todo = TodoRepository.last

    response = action.call(params)
    body = JSON.parse(response[2][0])

    expect(body).to eq([
        {
          'id' => @todo.id,
          'body' => @todo.body,
          'created_at' => @todo.created_at
        }
    ])
  end
end
