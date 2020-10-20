class DeleteTaskListColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :checklists, :task_list
  end
end
