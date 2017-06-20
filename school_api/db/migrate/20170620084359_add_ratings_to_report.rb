class AddRatingsToReport < ActiveRecord::Migration
  def change
    add_column :reports, :ratings, :text
  end
end
