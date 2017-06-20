class RemoveReportIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :reports, :student_id
  end
end
