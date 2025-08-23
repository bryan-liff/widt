class Did < ApplicationRecord
  ITEMS_TIMES = [
    ['Breakfast / emails', 30],
    ['Learning: math', 60],
    ['Learning: dev skills', 30],
    ['Learning: functional skills', 30],
    ['Learning: ai/ml', 30],
    ['Health: music', 45],
    ['Duties: Clio / household', 45],
    ['Health: workout', 90],
    ['Lunch / emails', 45],
    ['Duties: personal', 45],
    ['Duties: building', 30],
    ['Professional: bus dev', 30],
    ['Health: reading', 30]
  ].freeze

  validates :day, uniqueness: true
end
