class Overview < ApplicationRecord
  belongs_to :Overview

  SELECT_OPT = 
  [
    ['Overviews', ''],
    ['Patient List', '1'],
    ['Patient Info', '2'],
    ['Charts by Date', '3'],
    ['Charts by Name', '4'],
  ]
end
