class AddTeacherIdIdToSection < ActiveRecord::Migration
  def change
    add_reference :sections, :teacher_id, index: true, foreign_key: true
  end
end
