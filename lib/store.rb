class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :carries_mens_womens_apparel?

  def carries_mens_womens_apparel?
    unless mens_apparel || womens_apparel
      errors.add(:name, " store doesn't carry mens and womens apparel.")
    end
  end

end