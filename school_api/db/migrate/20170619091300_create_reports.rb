class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.text :details
      t.references :section, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
