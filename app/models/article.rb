class Article < ApplicationRecord
    def self.search(term)
        where("title || body ILIKE ?", "%#{term}%")
    end
end
