class ChangeTaskListColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :checklists, :task_list, :string, :default => "{'Submit Resume': false}, {'Submit Cover Letter': false}, {'Interview': false}"
  end
end