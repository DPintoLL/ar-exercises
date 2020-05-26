class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :must_carry_mens_womens_apparel, on: :create

  def must_carry_mens_womens_apparel 
    erros.add(:name, " store doesn't carry mens and womens apparel.") unless :mens_apparel && :womens_apparel
  end
end