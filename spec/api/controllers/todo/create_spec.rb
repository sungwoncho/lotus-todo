require 'spec_helper'
require_relative '../../../../apps/api/controllers/todo/create'

describe Api::Controllers::Todo::Create do
  let(:action) { Api::Controllers::Todo::Create.new }
  let(:params) { Hash['body', 'Read book'] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  it 'creates a new todo' do
    expect {
      action.call(params)
    }.to change { TodoRepository.all.count }.by(1)
  end
end
