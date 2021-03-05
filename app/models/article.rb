class Article < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    has_many :has_categories, dependent: :destroy
    has_many :categories, through: :has_categories
end
