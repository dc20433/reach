class Regi < ApplicationRecord
  has_many :patients, dependent: :destroy
  has_many :charts, dependent: :destroy

  GENDER_OPTIONS = [
    ['Select', ''],
    ['Male', 'Male'],
    ['Female', 'Female'],
    ['Other', 'Other']
  ]
end
