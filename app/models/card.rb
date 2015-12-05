class Card < ActiveRecord::Base
    validates :original_text, presence: true
    validates :translated_text, presence: true
    validates :review_date, presence: true
    validate :check_cards

    def check_cards
         if original_text.casecmp(translated_text) == 0
            errors.add(:translated_text, "can't be the same as original text")    
            errors.add(:original_text, "can't be the same as translated text")             
         end
    end
end
