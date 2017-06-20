class RemoveReportFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :report_id
  end
end
