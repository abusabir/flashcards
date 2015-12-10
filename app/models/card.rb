class Card < ActiveRecord::Base
  validates :original_text, :translated_text, :review_date, presence: true
  validate :check_cards

  before_validation do
    self.review_date = DateTime.now.next_day(3)
  end

  def check_cards
    if original_text.casecmp(translated_text) == 0
      errors.add(:translated_text, "can't be the same as original text")
      errors.add(:original_text, "can't be the same as translated text")             
    end
  end
end
