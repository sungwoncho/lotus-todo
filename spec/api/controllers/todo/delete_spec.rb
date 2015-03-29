require 'spec_helper'
require_relative '../../../../apps/api/controllers/todo/delete'

describe Api::Controllers::Todo::Delete do

  before(:each) do
    _todo = Todo.new(body: 'Sell stuff')
    @todo = TodoRepository.persist(_todo)
  end

  let(:action) { Api::Controllers::Todo::Delete.new }
  let(:valid_params) { Hash[id: @todo.id] }

  it "is successful" do
    response = action.call(valid_params)
    expect(response[0]).to eq 200
  end

  context 'with valid params' do
    it 'deletes the todo' do
      expect {
        action.call(valid_params)
      }.to change { TodoRepository.all.count }.by(-1)
    end
  end
end
