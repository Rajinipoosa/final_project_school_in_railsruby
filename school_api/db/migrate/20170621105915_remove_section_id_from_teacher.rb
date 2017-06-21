class RemoveSectionIdFromTeacher < ActiveRecord::Migration
  def change
    remove_column :teachers, :section_id

  end
end
