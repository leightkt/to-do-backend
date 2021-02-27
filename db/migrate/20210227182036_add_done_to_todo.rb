class AddDoneToTodo < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :done, :boolean
  end
end
