class CreateTodos < Sequel::Migration
  def up
    create_table :todos do
      primary_key :id
      String :body
      DateTime :created_at
      DateTime :updated_at
    end
  end

  def down
    drop_table :todos
  end
end
