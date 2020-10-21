class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :resumes, :integer, default: 0
    add_column :users, :cover_letters, :integer, default: 0
    add_column :users, :interviews, :integer, default: 0
  end
end
