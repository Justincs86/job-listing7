class Job < ApplicationRecord
  validates :title, presence: true
  validates :lower_wage_bound, presence: true
  validates :upper_wage_bound, presence: true
  validates :lower_wage_bound, numericality: { greater_than: 0 }
end
