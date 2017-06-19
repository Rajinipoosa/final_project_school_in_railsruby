class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.text :details
      t.datetime :date
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
