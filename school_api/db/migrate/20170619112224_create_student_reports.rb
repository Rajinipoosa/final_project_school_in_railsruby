class CreateStudentReports < ActiveRecord::Migration
  def change
    create_table :student_reports do |t|
      t.references :section, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :report, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
