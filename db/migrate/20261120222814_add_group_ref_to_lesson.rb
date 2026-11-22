class AddGroupRefToLesson < ActiveRecord::Migration[8.1]
  def change
    add_reference :lessons, :group, null: true, foreign_key: true
  end
end
