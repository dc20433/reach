class RemoveColumnsUDateAndTitleFromFilings < ActiveRecord::Migration[7.0]
  def change
    remove_column :filings, :u_date
    remove_column :filings, :title
  end
end
