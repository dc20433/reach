class AddDOnsetToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :d_onset, :date
  end
end
