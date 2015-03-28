require 'spec_helper'
require_relative '../../../../apps/api/controllers/todo/create'

describe Api::Controllers::Todo::Create do
  let(:action) { Api::Controllers::Todo::Create.new }
  let(:valid_params) { Hash['body', 'Read book'] }
  let(:invalid_params) { Hash['body', ''] }

  context 'with valid params' do
    it "returns 201 successful status" do
      response = action.call(valid_params)
      expect(response[0]).to eq 201
    end

    it 'creates a new todo' do
      expect {
        action.call(valid_params)
      }.to change { TodoRepository.all.count }.by(1)
    end
  end

  context 'with invalid params' do
    it 'returns 422 unprocessible entity status' do
      response = action.call(invalid_params)
      expect(response[0]).to eq 422
    end
  end
end
