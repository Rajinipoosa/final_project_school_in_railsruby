class Student < ActiveRecord::Base
  belongs_to :section
  belongs_to :teacher
  # belongs_to :report
  belongs_to :user
  has_many :student_reports
  has_many :reports, through: :student_reports
end
