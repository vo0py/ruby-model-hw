class AddGroupRefToStudent < ActiveRecord::Migration[8.1]
  def change
    add_reference :students, :group, null: true, foreign_key: true
  end
end
