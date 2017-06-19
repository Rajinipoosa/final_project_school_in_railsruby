class School < ActiveRecord::Base
  has_many :newsletters
  has_many :sections
end
