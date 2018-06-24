class Article < ApplicationRecord
    belongs_to :user
    has_many :comments
    is_impressionable

    def self.search(term)
        where("title || body ILIKE ?", "%#{term}%")
    end
end
