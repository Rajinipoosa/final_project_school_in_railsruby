class AddSchoolRefToSection < ActiveRecord::Migration
  def change
    add_reference :sections, :school, index: true, foreign_key: true
  end
end
