class CreateRegis < ActiveRecord::Migration[7.0]
  def change
    create_table :regis do |t|
      t.string :last_name
      t.string :first_name
      t.string :init
      t.string :gender
      t.date :dob

      t.timestamps precision: 0
    end
  end
end
