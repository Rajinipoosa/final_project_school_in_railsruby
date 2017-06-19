class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :image
      t.references :section, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true
      t.references :report, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
