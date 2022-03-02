class AddTeacherDefaultValueToUsers < ActiveRecord::Migration[6.1]
  def change
    User.where(teacher:nil).update_all(teacher: false)
    change_column_null :users, :teacher, false
    change_column_default :users, :teacher, from: nil, to: false
  end
end
