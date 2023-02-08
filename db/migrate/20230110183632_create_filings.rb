class CreateFilings < ActiveRecord::Migration[7.0]
  def change
    create_table :filings do |t|
      t.date :u_date
      t.string :title
      t.text :describe
      t.references :regi, null: false, foreign_key: true

      t.timestamps precision: 0
    end
  end
end
