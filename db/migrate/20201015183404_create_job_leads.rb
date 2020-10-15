class CreateJobLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :job_leads do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :company
      t.string :link
      t.date :date
      t.string :contact_method
      t.string :referral
      t.string :title

      t.timestamps
    end
  end
end
