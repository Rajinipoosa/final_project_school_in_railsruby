class RemoveTeacherIdIdFromSection < ActiveRecord::Migration
  def change
    remove_column :sections, :teacher_id_id

  end
end
