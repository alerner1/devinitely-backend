class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.belongs_to :job_lead, null: false, foreign_key: true
      t.string :task_list

      t.timestamps
    end
  end
end
