class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.date :v_date
      t.string :m_stat
      t.decimal :weight, precision: 4, scale: 1, after: :float_val
      t.decimal :height, precision: 2, scale: 1, after: :float_val
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :cell
      t.string :home
      t.string :work
      t.string :email
      t.string :referred
      t.string :com1
      t.string :com2
      t.string :com3
      t.string :d_onset
      t.string :pain_scale
      t.decimal :d_lost, precision: 4, scale: 1, after: :float_val
      t.decimal :d_restd, precision: 4, scale: 1, after: :float_val
      t.string :c_onset
      t.string :better
      t.string :worse
      t.string :o_drs
      t.date :o_drs_when
      t.string :pcp_name
      t.string :hosp
      t.date :h_when
      t.string :diag_given
      t.string :diag_where
      t.string :aq_b4
      t.string :aqrist
      t.string :aq_where
      t.string :di_list, :string, array: true, default: []
      t.string :o_dis
      t.string :inj_surg
      t.string :med_taken
      t.string :alcohol
      t.string :tobacco
      t.date :last_prd
      t.string :preg
      t.integer :preg_wks
      t.references :regi, null: false, foreign_key: true

      t.timestamps precision:0
    end
  end
end
