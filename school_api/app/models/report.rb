class Report < ActiveRecord::Base
  belongs_to :section
  has_many :student_reports
  has_many :students, through: :student_reports
end
