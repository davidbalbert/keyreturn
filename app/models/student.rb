class Student < ActiveRecord::Base
  validates :card_id, presence: true, if: :returned_card?

  def name
    if middle_name.blank?
      "#{first_name} #{last_name}"
    else
      "#{first_name} #{middle_name} #{last_name}"
    end
  end
end
