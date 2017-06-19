class Student < ActiveRecord::Base
  belongs_to :section
  belongs_to :teacher
  belongs_to :report
  belongs_to :user
end
