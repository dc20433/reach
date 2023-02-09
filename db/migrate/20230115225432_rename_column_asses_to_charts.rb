class RenameColumnAssesToCharts < ActiveRecord::Migration[7.0]
  def change
    rename_column :charts, :asses, :assess
  end
end
