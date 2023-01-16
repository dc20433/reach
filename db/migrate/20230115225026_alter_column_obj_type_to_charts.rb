class AlterColumnObjTypeToCharts < ActiveRecord::Migration[7.0]
  def change
    change_column :charts, :obj, :text 
    change_column :charts, :asses, :text 
    change_column :charts, :plan, :text 
  end
end
