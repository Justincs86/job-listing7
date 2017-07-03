class Job < ApplicationRecord
  validates :title, presence: true
  validates :lower_wage_bound, presence: true
  validates :upper_wage_bound, presence: true
  validates :lower_wage_bound, numericality: { greater_than: 0 }

  def hide!
    self.is_hidden = true
    self.save
  end

  def publish!
    self.is_hidden = false
    self.save
  end
  
end
