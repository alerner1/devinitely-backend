class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.belongs_to :job_lead, null: false, foreign_key: true
      t.string :name
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
