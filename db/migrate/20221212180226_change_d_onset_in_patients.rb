class ChangeDOnsetInPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :d_onset
  end
end
