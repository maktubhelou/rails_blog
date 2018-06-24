class Article < ApplicationRecord
    belongs_to :user
    has_many :comments
    is_impressionable
    acts_as_taggable #

    def self.search(term)
        where("title || body ILIKE ?", "%#{term}%")
    end
end
