class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :name
      t.integer :num_of_students

      t.timestamps null: false
    end
  end
end
