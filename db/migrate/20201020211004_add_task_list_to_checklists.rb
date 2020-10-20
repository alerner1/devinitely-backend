class AddTaskListToChecklists < ActiveRecord::Migration[6.0]
  def change
    add_column :checklists, :task_list, :string
  end
end
