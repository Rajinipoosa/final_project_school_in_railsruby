class AddTeacherIdToSection < ActiveRecord::Migration
  def change
    add_reference :sections, :teacher, index: true, foreign_key: true
  end
end
