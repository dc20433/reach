class RenameSoapAqListCMedListCForListToCharts < ActiveRecord::Migration[7.0]
  def change
    rename_column :charts, :soap, :subj
    rename_column :charts, :aq_list, :obj
    rename_column :charts, :c_med_list, :asses
    rename_column :charts, :c_for_list, :plan
  end
end
