class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, minimum: 1 }
  validate :store_must_carry_atleast_mens_or_womens_apparel

  def store_must_carry_atleast_mens_or_womens_apparel
    unless mens_apparel.present? || womens_apparel.present?
      mens_apparel.present?
        errors.add(:mens_apparel, "must be present if womens_apparel is not")
      womens_apparel.present?
        errors.add(:womens_apparel, "must be present if mens_apparel is not")
    end
  end

end
