class AddTeacherToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :teacher, :boolean
  end
end
